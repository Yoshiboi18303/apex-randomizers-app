import "./models/legend.dart";
import "./models/map.dart";
import "./models/landing_point.dart";
import "./models/weapon.dart";

/*
 * The lists in this file do not contain state variables or methods.
 * They are instead put in their cooresponding Widget.
 */

// ------------------------------------------------------------------------------ //
// ------------------------ LEGEND CHOOSER LISTS -------------------------------- //
// ------------------------------------------------------------------------------ //

// WARNING: DO NOT MODIFY THE POSITIONS OR THE VALUES OF THIS LIST.
final legendList = <List<Legend>>[
  [
    Legend("https://apexlegends.fandom.com/wiki/Bangalore", "Bangalore"),
    Legend("https://apexlegends.fandom.com/wiki/Fuse", "Fuse"),
    Legend("https://apexlegends.fandom.com/wiki/Ash", "Ash"),
    Legend("https://apexlegends.fandom.com/wiki/Mad_Maggie", "Mad Maggie"),
    Legend("https://apexlegends.fandom.com/wiki/Ballistic", "Ballistic"),
  ],
  [
    Legend("https://apexlegends.fandom.com/wiki/Pathfinder", "Pathfinder"),
    Legend("https://apexlegends.fandom.com/wiki/Wraith", "Wraith"),
    Legend("https://apexlegends.fandom.com/wiki/Octane", "Octane"),
    Legend("https://apexlegends.fandom.com/wiki/Revenant", "Revenant"),
    Legend("https://apexlegends.fandom.com/wiki/Horizon", "Horizon"),
    Legend("https://apexlegends.fandom.com/wiki/Valkyrie", "Valkyrie"),
  ],
  [
    Legend("https://apexlegends.fandom.com/wiki/Bloodhound", "Bloodhound"),
    Legend("https://apexlegends.fandom.com/wiki/Crypto", "Crypto"),
    Legend("https://apexlegends.fandom.com/wiki/Seer", "Seer"),
    Legend("https://apexlegends.fandom.com/wiki/Vantage", "Vantage"),
  ],
  [
    Legend("https://apexlegends.fandom.com/wiki/Gibraltar", "Gibraltar"),
    Legend("https://apexlegends.fandom.com/wiki/Lifeline", "Lifeline"),
    Legend("https://apexlegends.fandom.com/wiki/Mirage", "Mirage"),
    Legend("https://apexlegends.fandom.com/wiki/Loba", "Loba"),
    Legend("https://apexlegends.fandom.com/wiki/Newcastle", "Newcastle"),
    Legend("https://apexlegends.fandom.com/wiki/Conduit", "Conduit"),
  ],
  [
    Legend("https://apexlegends.fandom.com/wiki/Caustic", "Caustic"),
    Legend("https://apexlegends.fandom.com/wiki/Wattson", "Wattson"),
    Legend("https://apexlegends.fandom.com/wiki/Rampart", "Rampart"),
    Legend("https://apexlegends.fandom.com/wiki/Catalyst", "Catalyst"),
  ],
];

// -------------------------------------------------------------------------- //

// ------------------------------------------------------------------------------ //
// ------------------------ LOADOUT CHOOSER LISTS ------------------------------- //
// ------------------------------------------------------------------------------ //

// WARNING: DO NOT MODIFY THE POSITIONS OR THE VALUES OF THESE LISTS.
final weaponList = <List<Weapon>>[
  [
    Weapon("P2020", "https://apexlegends.fandom.com/wiki/P2020"),
    Weapon("RE-45", "https://apexlegends.fandom.com/wiki/RE-45_Auto"),
    Weapon("Alternator", "https://apexlegends.fandom.com/wiki/Alternator"),
    Weapon("R-99", "https://apexlegends.fandom.com/wiki/R-99_SMG"),
    Weapon("R-301", "https://apexlegends.fandom.com/wiki/R-301_Carbine"),
    Weapon("Spitfire", "https://apexlegends.fandom.com/wiki/M600_Spitfire"),
    Weapon("G7 Scout", "https://apexlegends.fandom.com/wiki/G7_Scout"),
  ], // Light
  [
    Weapon("CAR", "https://apexlegends.fandom.com/wiki/C.A.R._SMG"),
    Weapon("Rampage", "https://apexlegends.fandom.com/wiki/Rampage_LMG"),
    Weapon("30-30", "https://apexlegends.fandom.com/wiki/30-30_Repeater"),
    Weapon("Hemlok", "https://apexlegends.fandom.com/wiki/Hemlok_Burst_AR"),
    Weapon("Flatline", "https://apexlegends.fandom.com/wiki/VK-47_Flatline"),
  ], // Heavy
  [
    Weapon("Havoc", "https://apexlegends.fandom.com/wiki/HAVOC_Rifle"),
    Weapon("Devotion", "https://apexlegends.fandom.com/wiki/Devotion_LMG"),
    Weapon("L-STAR", "https://apexlegends.fandom.com/wiki/L-STAR_EMG"),
    Weapon("Triple Take", "https://apexlegends.fandom.com/wiki/Triple_Take"),
    Weapon("Volt", "https://apexlegends.fandom.com/wiki/Volt_SMG"),
    Weapon("Nemesis", "https://apexlegends.fandom.com/wiki/Nemesis_Burst_AR")
  ], // Energy
  [
    Weapon(
        "Mozambique", "https://apexlegends.fandom.com/wiki/Mozambique_Shotgun"),
    Weapon("EVA-8", "https://apexlegends.fandom.com/wiki/EVA-8_Auto"),
    Weapon("Peacekeeper", "https://apexlegends.fandom.com/wiki/Peacekeeper"),
    Weapon("Mastiff", "https://apexlegends.fandom.com/wiki/Mastiff_Shotgun"),
  ],
  [
    Weapon("Longbow", "https://apexlegends.fandom.com/wiki/Longbow_DMR"),
    Weapon("Charge Rifle", "https://apexlegends.fandom.com/wiki/Charge_Rifle"),
    Weapon("Sentinel", "https://apexlegends.fandom.com/wiki/Sentinel"),
  ], // Sniper
];
final specialWeapons = <Weapon>[
  Weapon("Kraber", "https://apexlegends.fandom.com/wiki/Kraber_.50-Cal_Sniper"),
  Weapon("Bocek", "https://apexlegends.fandom.com/wiki/Bocek_Compound_Bow"),
  Weapon("Prowler", "https://apexlegends.fandom.com/wiki/Prowler_Burst_PDW"),
  Weapon("Wingman", "https://apexlegends.fandom.com/wiki/Wingman"),
];

// -------------------------------------------------------------------------- //

// ------------------------------------------------------------------------------ //
// ---------------------- LANDING POINT CHOOSER LISTS --------------------------- //
// ------------------------------------------------------------------------------ //

final mapList = <Map>[
  Map("Kings Canyon", "https://apexlegends.fandom.com/wiki/Kings_Canyon", [
    LandingPoint("Airbase", true),
    LandingPoint("ARES Capacitor", true),
    LandingPoint("Artillery Battery", true),
    LandingPoint("Artillery Underpass", false),
    LandingPoint("Basin", false),
    LandingPoint("Broken Coast", false),
    LandingPoint("Broken Coast Overlook", false),
    LandingPoint("Broken Coast South", false),
    LandingPoint("Broken Relay", false),
    LandingPoint("Bunker Pass", true),
    LandingPoint("Cable Suspension", false),
    LandingPoint("Cage", true),
    LandingPoint("Cage Crossing", false),
    LandingPoint("Capacitor Junction", false),
    LandingPoint("Capacitor Overlook", false),
    LandingPoint("Capacitor Tunnel", false),
    LandingPoint("Caustic Treatment", true),
    LandingPoint("Caves", false),
    LandingPoint("Crashed Ship", false),
    LandingPoint("Crash Site", true),
    LandingPoint("Creature Containment", true),
    LandingPoint("Crossroads", false),
    LandingPoint("Crypto's Map Room", true),
    LandingPoint("Destroyed Artillery Tunnel", false),
    LandingPoint("Destroyed Cascades", false),
    LandingPoint("East Settlement", false),
    LandingPoint("Golden Sands", false),
    LandingPoint("High Desert", false),
    LandingPoint("Hillside Outpost", false),
    LandingPoint("Hydro Dam", true),
    LandingPoint("Hydro Tunnel", false),
    LandingPoint("Lagoon Crossing", false),
    LandingPoint("Marketplace", true),
    LandingPoint("Octane's Gauntlet", true),
    LandingPoint("Offshore Rig", true),
    LandingPoint("Offshore Rig Loading", false),
    LandingPoint("Reclaimed Forest", false),
    LandingPoint("Repulsor", true),
    LandingPoint("Relic", true),
    LandingPoint("River Center", false),
    LandingPoint("Runoff", true),
    LandingPoint("Skull Savage", false),
    LandingPoint("Singh Labs", true),
    LandingPoint("Singh Labs Interior", false),
    LandingPoint("Spotted Lake", true),
    LandingPoint("Suspended Skull", false),
    LandingPoint("Swamps", true),
    LandingPoint("The Pit", true),
    LandingPoint("Two Spines", false),
    LandingPoint("Two Spines Outpost", false),
    LandingPoint("Uncovered Bones", false),
    LandingPoint("Verdant Crossing", false),
    LandingPoint("Watchtower North", false),
    LandingPoint("Watchtower South", false),
  ]),
  Map("World's Edge", "https://apexlegends.fandom.com/wiki/World%27s_Edge", [
    LandingPoint("Rampart's Big Maude", true),
    LandingPoint("Bloodhouns's Trials", true),
    LandingPoint("Climatizer", true),
    LandingPoint("Countdown", true),
    LandingPoint("Fissure Crossing", false),
    LandingPoint("Fragment East", true),
    LandingPoint("Harvester", true),
    LandingPoint("Hill Valley", false),
    LandingPoint("Landslide", true),
    LandingPoint("Launch Site", true),
    LandingPoint("Lava Fissure", true),
    LandingPoint("Monument", true),
    LandingPoint("Overlook", true),
    LandingPoint("Staging", true),
    LandingPoint("Skyhook", true),
    LandingPoint("Spring's End", false),
    LandingPoint("Storage Room", false),
    LandingPoint("Stacks", true),
    LandingPoint("Survey Camp", true),
    LandingPoint("Thermal Station", true),
    LandingPoint("The Bridge", false),
    LandingPoint("The Dome", true),
    LandingPoint("The Epicenter", true),
    LandingPoint("The Geyser", true),
    LandingPoint("The Mining Pass", false),
    LandingPoint("The Rain Tunnel", false),
    LandingPoint("The Tree", true),
  ]),
  Map("Olympus", "https://apexlegends.fandom.com/wiki/Olympus", [
    LandingPoint("Agriculture Entry", false),
    LandingPoint("Antechamber", false),
    LandingPoint("Autumn Estates", true),
    LandingPoint("Bonsai Plaza", true),
    LandingPoint("Bonsai Hillside", false),
    LandingPoint("Arcadia Supercarrier", true),
    LandingPoint("Central Turbine", true),
    LandingPoint("Defense Perimeter", false),
    LandingPoint("Docks", true),
    LandingPoint("Elysium", true),
    LandingPoint("Energy Depot", true),
    LandingPoint("Farmstead", false),
    LandingPoint("Grow Towers", true),
    LandingPoint("Golden Gardens", true),
    LandingPoint("Hammond Labs", true),
    LandingPoint("Hydroponics", true),
    LandingPoint("Ivory Pass", false),
    LandingPoint("Lab Annex", false),
    LandingPoint("Lifeline's Clinic", true),
    LandingPoint("Maintenance", false),
    LandingPoint("Orbital Cannon Test Site", true),
    LandingPoint("Pathfinder's Fight Night", true),
    LandingPoint("Phase Gateway Central", false),
    LandingPoint("Phase Gateway West", false),
    LandingPoint("Primary Power Grid", false),
    LandingPoint("Rift Aftermath", true),
    LandingPoint("Research Basin", false),
    LandingPoint("Secondary Power Grid", false),
    LandingPoint("Shipyard", false),
    LandingPoint("Solar Array", true),
    LandingPoint("Supply Track", false),
    LandingPoint("The Icarus", true),
    LandingPoint("The Reverie Lounge", false),
    LandingPoint("Underpass", false),
    LandingPoint("Velvet Oasis", true),
    LandingPoint("Wildflower Meadow", false),
  ]),
  /* To be added once the wiki is updated with the ACTUAL map locations, I can't just pull these from the game lmao. */
  // Map("Storm Point", "https://apexlegends.fandom.com/wiki/Storm_Point", []),
  Map("Broken Moon", "https://apexlegends.fandom.com/wiki/Broken_Moon", [
    // This is in a random order as I had to put these values in manually without a list.
    // Also, whether the location is on the map had to come off the top of my head.
    LandingPoint("Breaker Wharf", true),
    LandingPoint("Black Sands", false),
    LandingPoint("North Road", false),
    LandingPoint("Dry Gulch", true),
    LandingPoint("Haven", false),
    LandingPoint("Perpetual Core", true),
    LandingPoint("Production Yard", true),
    LandingPoint("Brakken Cliffs", false),
    LandingPoint("Research Corridor", false),
    LandingPoint("Cultivation", true),
    LandingPoint("The Foundry", true),
    LandingPoint("Windy Hill", false),
    LandingPoint("Broken Forest", false),
    LandingPoint("Atmostation", true),
    LandingPoint("Retreat", false),
    LandingPoint("Bionomics", true),
    LandingPoint("The Divide", true),
    LandingPoint("Gardenview Hill", false),
    LandingPoint("Riverfront", false),
    LandingPoint("Eternal Gardens", true),
    LandingPoint("Misty Hill", false),
    LandingPoint("Garden Pass", false),
    LandingPoint("Backup Atmo", true),
    LandingPoint("Lunar Cave", false),
    LandingPoint("Alpha Base", true),
    LandingPoint("Moon's End", false),
    LandingPoint("Statis Net Array", true),
    LandingPoint("North Promenade", true),
    LandingPoint("South Promenade", true),
    LandingPoint("Water Works", false),
    LandingPoint("Intersection", false),
    LandingPoint("Terraformer", true),
  ]),
];
