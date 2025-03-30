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

<<<<<<< HEAD
=======
    public string armorSetName;

>>>>>>> dd58089c (Character Selection Added & Level 1 Complete (may add more to it though))
    public override void Use()
    {
        base.Use();
        // Equip the item
        EquipmentManager.instance.Equip(this);
        
        // Remove it from the inventory
        RemoveFromInventory();
    }
}

<<<<<<< HEAD
public enum EquipmentSlot{ Head, Chest, Gauntlets, Legs, Weapon, Cape, Feet }
=======
public enum EquipmentSlot{ Head, Chest, Legs, Weapon, Shield, Feet }
>>>>>>> dd58089c (Character Selection Added & Level 1 Complete (may add more to it though))
public enum EquipmentMeshRegion {Legs, Arms, Torso }; // Corresponds to body blendshapes