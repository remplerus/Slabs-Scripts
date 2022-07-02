var mod = "mysticalagriculture:";
 
var seedTypes = [ "air", "earth", "water", "fire", "inferium", "stone", "dirt", "wood", "ice", "deepslate", "nature", "dye", "nether", "coal", "coral", "honey",
"amethyst", "pig", "chicken", "cow", "sheep", "squid", "fish", "slime", "turtle", "rubber", "silicon", "sulfur", "aluminum", "saltpeter", "apatite", "mystical_flower", 
"limestone", "iron", "copper", "nether_quartz", "glowstone", "redstone", "obsidian", "prismarine", "zombie", "skeleton", "creeper", "spider", "rabbit", "tin", "bronze", 
"zinc", "brass", "silver", "lead", "graphite", "tinkers_bronze", "slimesteel", "pig_iron", "manasteel", "quartz_enriched_iron", "gold", "lapis_lazuli", "end", 
"experience", "blaze", "ghast", "enderman", "steel", "nickel", "constantan", "electrum", "invar", "mithril", "tungsten", "titanium", "uranium", "chrome", "ruby", 
"sapphire", "hop_graphite", "cobalt", "rose_gold", "elementium", "osmium", "fluorite", "refined_glowstone", "refined_obsidian", "compressed_iron", "diamond", "emerald", 
"netherite", "wither_skeleton", "platinum", "iridium", "manyullyn", "queens_slime", "hepatizon", "terrasteel"] as string[];
 
function addSeedToCloche(name as string) as void {
    <recipetype:immersiveengineering:cloche>.addJsonRecipe("cloch_compat_" + name, {
        "results" : [
            {
                "item": "mysticalagriculture:" + name + "_essence",
                "count": 1
            }
        ],
        "input": {
            "item": "mysticalagriculture:" + name + "_seeds"
        },
        "soil": {
            "item": "minecraft:dirt"
        },
        "time": 800,
        "render": {
            "type": "crop",
            "block": "mysticalagriculture:" + name + "_crop"
        }
    });
}
 
for seed in seedTypes {
addSeedToCloche(seed);
}
