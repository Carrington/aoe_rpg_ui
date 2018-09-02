declare enum BackgroundNames {
  Administration = 'Administration',
  Weaponsmithing = 'Weaponsmithing',
  Ventriloquism = 'Ventriloquism',
  Trapping = 'Trapping',
  Torture = 'Torture',
  Tailoring = 'Tailoring',
  Surfing = 'Surfing',
  Sport = 'Sport',
}

export interface IBackground {
  name: BackgroundNames,
  specification?: string
}

export default function reducer(): IBackground[] {
  return [
    { name: BackgroundNames.Administration},
    { name: BackgroundNames.Weaponsmithing, specification: 'weapon_type' },
    { name: BackgroundNames.Ventriloquism },
    { name: BackgroundNames.Trapping },
    { name: BackgroundNames.Torture },
    { name: BackgroundNames.Tailoring },
    { name: BackgroundNames.Surfing },
    { name: BackgroundNames.Sport, specification: 'sport' }
  ];
}
