import { readFileSync } from 'fs';
import * as types from './types';

export const typeDefs = readFileSync('./schema.graphql', { encoding: 'utf-8' });
export * from './types';
// export {
//   ...types,
//   typeDefs: readFileSync('./schema.graphql', { encoding: 'utf-8' }),
// };
