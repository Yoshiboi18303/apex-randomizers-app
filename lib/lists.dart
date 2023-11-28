import "./models/legend.dart";
import "./models/map.dart";
import "./models/landing_point.dart";

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

// To be added...

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
  Map("World's Edge", "https://apexlegends.fandom.com/wiki/World%27s_Edge", []),
  Map("Olympus", "https://apexlegends.fandom.com/wiki/Olympus", []),
  Map("Storm Point", "https://apexlegends.fandom.com/wiki/Storm_Point", []),
  Map("Broken Moon", "https://apexlegends.fandom.com/wiki/Broken_Moon", []),
];
