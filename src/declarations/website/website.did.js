export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'back' : IDL.Func([], [], []),
    'getButtonText' : IDL.Func([], [IDL.Text], ['query']),
    'getCounter' : IDL.Func([], [IDL.Nat], ['query']),
    'getImage' : IDL.Func([], [IDL.Text], ['query']),
    'getText' : IDL.Func([], [IDL.Text], ['query']),
    'next' : IDL.Func([], [IDL.Text], []),
    'resetCounter' : IDL.Func([], [], []),
  });
};
export const init = ({ IDL }) => { return []; };
