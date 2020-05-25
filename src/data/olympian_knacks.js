// KnackContext
// - receives refs to:
// -- Initiate
// -- Scene
// --- Actors
// ---- Actor
// ---- Distance from Initiate
// --- Ambient Gists

// const ConstantOngoing1 = () => ({
//   ongoing: true,
//   scaling: (n) => n,
//   baseCost: 1
// });

// const ImmediateAction = (characterContext) => ({
//   actions: 1,
//   steps: 1
// });

// const PhaserFunction = (refs) => ({
//   type: 'entity',
//   value: {
//     type: 'weapon',
//     owner: refs.initiate.id,
//     weaponActions: [
//       'PhaserAttackStun',
//       'PhaserAttackKill',
//       'PhaserAttackDisintegrate'
//     ]
//   }
// });

// const PhaserAttackStun = ({
//  id: 'PhaserAttackStun',
//  name: 'Set Phasers For Stun!',
//  baseCard: {
//    suit: 'swords',
//    number: 13
//  },
//  description: 'pew pew stun beam',
//  actionResolver: null
// });
//
// const PhaserAttackKill = ({
//  id: 'PhaserAttackKill',
//  name: 'Set Phasers To Kill!',
//  baseCard: {
//    suit: 'swords',
//    number: 13
//  },
//  description: 'CHARGING MAH LAZER BEAM!!',
//  actionResolver: null
// });
//
// const PhaserAttackDisintegrate = ({
//  id: 'PhaserAttackDisintegrate',
//  name: 'Set Phasers To Maximum!',
//  baseCard: {
//    suit: 'swords',
//    number: 13
//  },
//  description: 'pew pew disintegrate beam',
//  actionResolver: null
// });

const invokeImmediate = {
  id: "invoke_001",
  baseCard: {
    suit: "pentacles",
    number: 1
  },
  logosResolver: "ConstantOngoing1",
  actionResolver: "ImmediateAction"
};

const producePhaser = {
  id: "produce_weapon_phaser",
  baseCard: {
    suit: "swords",
    number: 8
  },
  logosResolver: "ConstantOngoing2",
  actionResolver: "ImmediateAction"
};

const starFleetCommunicator = {

};

const todoAction = 'Fuck shit I need to write this';

const knacks = {
  "data": {
    "knacks": [
      {
        "id": "invoke_picard",
        "name": "Invoke Jean Luc Picard, Captain of the USS Enterprise",
        "baseKnack": invokeImmediate,
        "description": "Call upon the power of Jean Luc Picard using the invocation phrase 'Make it So!' to enter your invoked state as his champion",
        "knackContext": {},
        "parent": null
      },
      {
        "id": "produce_weapon_phaser_001",
        "name": "Produce Phaser",
        "baseKnack": producePhaser,
        "description": "Draw your holstered phaser, manifesting it into physical, material reality",
        "knackContext": {
          "returns": "PhaserFunction" // Improvable to Kill/Disintegrate
        },
        "parent": "invoke_picard"
      },
      {
        "id": "star_fleet_communicator",
        "name": "Produce Phaser",
        "baseKnack": starFleetCommunicator,
        "description": "",
        "knackContext": {
          "returns": ""
        },
        "parent": "invoke_picard"
      },
      {
        "id": "summon_away_team",
        "name": "Call Away Team",
        "baseKnack": todoAction,
        "knackContext": {
          "input": {} // she gets to pump it for better guys but she has to know them (improve knack)
        },
        "parent": "star_fleet_communicator"
      },
      {
        "id": "launch_photon_torpedo",
        "name": "Call for Strategic Strike",
        "parent": "summon_away_team"
      },
      {
        "id": "use_tricorder",
        "parent": "star_fleet_communicator"
      },
      {
        "id": ""
      }
    ]
  }
};

export default knacks;
