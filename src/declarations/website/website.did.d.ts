import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'back' : () => Promise<undefined>,
  'getButtonText' : () => Promise<string>,
  'getCounter' : () => Promise<bigint>,
  'getImage' : () => Promise<string>,
  'getText' : () => Promise<string>,
  'next' : () => Promise<string>,
  'resetCounter' : () => Promise<undefined>,
}
