import {ConfigFile} from '../../generator/types';
export const config: ConfigFile = {
  rootOptions: {
    pools: ['AaveV2Polygon'],
    title: 'Reserve Factor Updates',
    shortName: 'ReserveFactorUpdates',
    date: '20240102',
    author: 'karpatkey_TokenLogic',
    discussion: 'https://governance.aave.com/t/arfc-reserve-factor-updates-polygon-aave-v2/13937',
    snapshot: 'No snapshot for Direct-to-AIP',
  },
  poolOptions: {AaveV2Polygon: {configs: {OTHERS: {}}, cache: {blockNumber: 51855274}}},
};
