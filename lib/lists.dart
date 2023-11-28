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
  ]),
  Map("World's Edge", "https://apexlegends.fandom.com/wiki/World%27s_Edge", []),
  Map("Olympus", "https://apexlegends.fandom.com/wiki/Olympus", []),
  Map("Storm Point", "https://apexlegends.fandom.com/wiki/Storm_Point", []),
  Map("Broken Moon", "https://apexlegends.fandom.com/wiki/Broken_Moon", []),
];
