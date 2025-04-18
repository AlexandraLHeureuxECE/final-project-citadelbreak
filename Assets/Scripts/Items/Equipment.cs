using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(fileName = "New Equipment", menuName = "Inventory/Equipment")]
public class Equipment : Item
{
    public EquipmentSlot equipSlot;
    public SkinnedMeshRenderer mesh;
    public EquipmentMeshRegion[] coveredMeshRegions;
    
    public int armourModifier;
    public int damageModifier;

    public string armorSetName;

    public override void Use()
    {
        base.Use();
        // Equip the item
        EquipmentManager.instance.Equip(this);
        
        // Remove it from the inventory
        RemoveFromInventory();
    }
}

public enum EquipmentSlot{ Head, Chest, Legs, Weapon, Shield, Feet }
public enum EquipmentMeshRegion {Legs, Arms, Torso }; // Corresponds to body blendshapes