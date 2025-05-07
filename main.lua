local mod = RegisterMod("damage up", 1)
local damageUp = Isaac.GetItemIdByName("Satan's Ring")
local damageUpDamage = 2

-- Track which players have received the black hearts
local givenBlackHearts = {}

-- Give damage boost
function mod:EvaluateCache(player, cacheFlag)
    if cacheFlag & CacheFlag.CACHE_DAMAGE == CacheFlag.CACHE_DAMAGE then
        local itemCount = player:GetCollectibleNum(damageUp)
        local damageToAdd = damageUpDamage * itemCount
        player.Damage = player.Damage + damageToAdd
    end
end
mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, mod.EvaluateCache)

-- Give 2 black hearts on item pickup
function mod:OnPlayerUpdate(player)
    local playerIndex = player:GetCollectibleRNG(damageUp):GetSeed() -- unique-ish identifier
    local itemCount = player:GetCollectibleNum(damageUp)

    if itemCount > 0 and not givenBlackHearts[playerIndex] then
        player:AddBlackHearts(4) -- 4 half-hearts = 2 full black hearts
        givenBlackHearts[playerIndex] = true
    end
end
mod:AddCallback(ModCallbacks.MC_POST_PEFFECT_UPDATE, mod.OnPlayerUpdate)

