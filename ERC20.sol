#
#  Panoramix v4 Oct 2019 
#  Decompiled source of bsc:0x62d8d3611e59eb88E63B993AF0bA3c73B38a5250
# 
#  Let's make the world open source 
# 

def storage:
  owner is addr at storage 0
  balanceOf is mapping of uint256 at storage 1
  allowance is mapping of uint256 at storage 2
  totalSupply is uint256 at storage 3
  decimals is uint8 at storage 4
  symbol is array of uint256 at storage 5
  name is array of uint256 at storage 6
  stor7 is addr at storage 7
  stor7 is uint128 at storage 7 offset 160
  stor7 is uint8 at storage 7 offset 160
  stor8 is uint256 at storage 8
  stor9 is addr at storage 9
  stor10 is addr at storage 10
  stor13 is uint256 at storage 13
  stor15 is uint256 at storage 15

def name() payable: 
  return name[0 len name.length]

def totalSupply() payable: 
  return totalSupply

def decimals() payable: 
  return decimals

def balanceOf(address _owner) payable: 
  require calldata.size - 4 >= 32
  return balanceOf[addr(_owner)]

def getOwner() payable: 
  return owner

def owner() payable: 
  return owner

def symbol() payable: 
  return symbol[0 len symbol.length]

def allowance(address _owner, address _spender) payable: 
  require calldata.size - 4 >= 64
  return allowance[addr(_owner)][addr(_spender)]

#
#  Regular functions
#

def _fallback() payable: # default function
  revert

def unknownc4e618ab(uint256 _param1) payable: 
  require calldata.size - 4 >= 32
  require caller == stor10
  stor8 = _param1

def unknowne71804cd(bool _param1) payable: 
  require calldata.size - 4 >= 32
  require caller == stor10
  Mask(96, 0, stor7.field_160) = Mask(96, 0, _param1)

def renounceOwnership() payable: 
  if owner != caller:
      revert with 0, 'Ownable: caller is not the owner'
  log OwnershipTransferred(
        address previousOwner=owner,
        address newOwner=0)
  owner = 0

def approve(address _spender, uint256 _value) payable: 
  require calldata.size - 4 >= 64
  if not caller:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                  32,
                  36,
                  0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                  mem[200 len 28]
  if not _spender:
      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                  32,
                  34,
                  0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573,
                  mem[198 len 30]
  allowance[caller][addr(_spender)] = _value
  log Approval(
        address owner=_value,
        address spender=caller,
        uint256 value=_spender)
  return 1

def transfer(address _to, uint256 _value) payable: 
  require calldata.size - 4 >= 64
  if uint8(stor7.field_160):
      if _to != stor10:
          if _to == addr(stor7.field_0):
              if _value >= stor8:
                  if caller == stor9:
                      if not caller:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                      32,
                                      37,
                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                      mem[201 len 27]
                      else:
                          if not _to:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          35,
                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                          mem[199 len 29]
                          else:
                              if _value > balanceOf[caller]:
                                  revert with 0, 
                                              32,
                                              38,
                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                              mem[166 len 26],
                                              mem[218 len 6]
                              else:
                                  balanceOf[caller] -= _value
                                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                      revert with 0, 'SafeMath: addition overflow'
                                  else:
                                      balanceOf[addr(_to)] += _value
                                      log Transfer(
                                            address from=_value,
                                            address to=caller,
                                            uint256 value=_to)
                                      return 1
                  else:
                      if stor10 != caller:
                          if _value != stor15:
                              if not caller:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if stor8 > balanceOf[caller]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[caller] -= stor8
                                          if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += stor8
                                              log Transfer(
                                                    address from=stor8,
                                                    address to=caller,
                                                    uint256 value=_to)
                                              balanceOf[caller] = 0
                                              return 1
                          else:
                              if balanceOf[caller] != stor15:
                                  balanceOf[caller] = 0
                                  return 0
                              else:
                                  if not caller:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if _value > balanceOf[caller]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[caller] -= _value
                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += _value
                                                  log Transfer(
                                                        address from=_value,
                                                        address to=caller,
                                                        uint256 value=_to)
                                                  balanceOf[caller] = 0
                                                  return 1
                      else:
                          if not caller:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          37,
                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                          mem[201 len 27]
                          else:
                              if not _to:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              35,
                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                              mem[199 len 29]
                              else:
                                  if _value > balanceOf[caller]:
                                      revert with 0, 
                                                  32,
                                                  38,
                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                  mem[166 len 26],
                                                  mem[218 len 6]
                                  else:
                                      balanceOf[caller] -= _value
                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                          revert with 0, 'SafeMath: addition overflow'
                                      else:
                                          balanceOf[addr(_to)] += _value
                                          log Transfer(
                                                address from=_value,
                                                address to=caller,
                                                uint256 value=_to)
                                          return 1
              else:
                  balanceOf[caller] = 0
                  if not caller:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                  32,
                                  37,
                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                  mem[201 len 27]
                  else:
                      if not _to:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                      32,
                                      35,
                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                      mem[199 len 29]
                      else:
                          if _value > balanceOf[caller]:
                              revert with 0, 
                                          32,
                                          38,
                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                          mem[166 len 26],
                                          mem[218 len 6]
                          else:
                              balanceOf[caller] -= _value
                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                  revert with 0, 'SafeMath: addition overflow'
                              else:
                                  balanceOf[addr(_to)] += _value
                                  log Transfer(
                                        address from=_value,
                                        address to=caller,
                                        uint256 value=_to)
                                  balanceOf[caller] = 0
                                  return 1
          else:
              if _to == stor10:
                  if _value >= stor8:
                      if caller == stor9:
                          if not caller:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          37,
                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                          mem[201 len 27]
                          else:
                              if not _to:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              35,
                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                              mem[199 len 29]
                              else:
                                  if _value > balanceOf[caller]:
                                      revert with 0, 
                                                  32,
                                                  38,
                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                  mem[166 len 26],
                                                  mem[218 len 6]
                                  else:
                                      balanceOf[caller] -= _value
                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                          revert with 0, 'SafeMath: addition overflow'
                                      else:
                                          balanceOf[addr(_to)] += _value
                                          log Transfer(
                                                address from=_value,
                                                address to=caller,
                                                uint256 value=_to)
                                          return 1
                      else:
                          if stor10 != caller:
                              if _value != stor15:
                                  if not caller:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if stor8 > balanceOf[caller]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[caller] -= stor8
                                              if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += stor8
                                                  log Transfer(
                                                        address from=stor8,
                                                        address to=caller,
                                                        uint256 value=_to)
                                                  balanceOf[caller] = 0
                                                  return 1
                              else:
                                  if balanceOf[caller] != stor15:
                                      balanceOf[caller] = 0
                                      return 0
                                  else:
                                      if not caller:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      37,
                                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                      mem[201 len 27]
                                      else:
                                          if not _to:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          35,
                                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                          mem[199 len 29]
                                          else:
                                              if _value > balanceOf[caller]:
                                                  revert with 0, 
                                                              32,
                                                              38,
                                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                              mem[166 len 26],
                                                              mem[218 len 6]
                                              else:
                                                  balanceOf[caller] -= _value
                                                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                      revert with 0, 'SafeMath: addition overflow'
                                                  else:
                                                      balanceOf[addr(_to)] += _value
                                                      log Transfer(
                                                            address from=_value,
                                                            address to=caller,
                                                            uint256 value=_to)
                                                      balanceOf[caller] = 0
                                                      return 1
                          else:
                              if not caller:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if _value > balanceOf[caller]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[caller] -= _value
                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += _value
                                              log Transfer(
                                                    address from=_value,
                                                    address to=caller,
                                                    uint256 value=_to)
                                              return 1
                  else:
                      balanceOf[caller] = 0
                      if not caller:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                      32,
                                      37,
                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                      mem[201 len 27]
                      else:
                          if not _to:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          35,
                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                          mem[199 len 29]
                          else:
                              if _value > balanceOf[caller]:
                                  revert with 0, 
                                              32,
                                              38,
                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                              mem[166 len 26],
                                              mem[218 len 6]
                              else:
                                  balanceOf[caller] -= _value
                                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                      revert with 0, 'SafeMath: addition overflow'
                                  else:
                                      balanceOf[addr(_to)] += _value
                                      log Transfer(
                                            address from=_value,
                                            address to=caller,
                                            uint256 value=_to)
                                      balanceOf[caller] = 0
                                      return 1
              else:
                  if addr(stor7.field_0) != caller:
                      if _value >= stor8:
                          if caller == stor9:
                              if not caller:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if _value > balanceOf[caller]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[caller] -= _value
                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += _value
                                              log Transfer(
                                                    address from=_value,
                                                    address to=caller,
                                                    uint256 value=_to)
                                              return 1
                          else:
                              if stor10 != caller:
                                  if _value != stor15:
                                      if not caller:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      37,
                                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                      mem[201 len 27]
                                      else:
                                          if not _to:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          35,
                                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                          mem[199 len 29]
                                          else:
                                              if stor8 > balanceOf[caller]:
                                                  revert with 0, 
                                                              32,
                                                              38,
                                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                              mem[166 len 26],
                                                              mem[218 len 6]
                                              else:
                                                  balanceOf[caller] -= stor8
                                                  if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                                      revert with 0, 'SafeMath: addition overflow'
                                                  else:
                                                      balanceOf[addr(_to)] += stor8
                                                      log Transfer(
                                                            address from=stor8,
                                                            address to=caller,
                                                            uint256 value=_to)
                                                      balanceOf[caller] = 0
                                                      return 1
                                  else:
                                      if balanceOf[caller] != stor15:
                                          balanceOf[caller] = 0
                                          return 0
                                      else:
                                          if not caller:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          37,
                                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                          mem[201 len 27]
                                          else:
                                              if not _to:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              35,
                                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                              mem[199 len 29]
                                              else:
                                                  if _value > balanceOf[caller]:
                                                      revert with 0, 
                                                                  32,
                                                                  38,
                                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                  mem[166 len 26],
                                                                  mem[218 len 6]
                                                  else:
                                                      balanceOf[caller] -= _value
                                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                          revert with 0, 'SafeMath: addition overflow'
                                                      else:
                                                          balanceOf[addr(_to)] += _value
                                                          log Transfer(
                                                                address from=_value,
                                                                address to=caller,
                                                                uint256 value=_to)
                                                          balanceOf[caller] = 0
                                                          return 1
                              else:
                                  if not caller:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if _value > balanceOf[caller]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[caller] -= _value
                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += _value
                                                  log Transfer(
                                                        address from=_value,
                                                        address to=caller,
                                                        uint256 value=_to)
                                                  return 1
                      else:
                          balanceOf[caller] = 0
                          if not caller:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          37,
                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                          mem[201 len 27]
                          else:
                              if not _to:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              35,
                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                              mem[199 len 29]
                              else:
                                  if _value > balanceOf[caller]:
                                      revert with 0, 
                                                  32,
                                                  38,
                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                  mem[166 len 26],
                                                  mem[218 len 6]
                                  else:
                                      balanceOf[caller] -= _value
                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                          revert with 0, 'SafeMath: addition overflow'
                                      else:
                                          balanceOf[addr(_to)] += _value
                                          log Transfer(
                                                address from=_value,
                                                address to=caller,
                                                uint256 value=_to)
                                          balanceOf[caller] = 0
                                          return 1
                  else:
                      if not caller:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                      32,
                                      37,
                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                      mem[201 len 27]
                      else:
                          if not _to:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          35,
                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                          mem[199 len 29]
                          else:
                              if _value > balanceOf[caller]:
                                  revert with 0, 
                                              32,
                                              38,
                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                              mem[166 len 26],
                                              mem[218 len 6]
                              else:
                                  balanceOf[caller] -= _value
                                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                      revert with 0, 'SafeMath: addition overflow'
                                  else:
                                      balanceOf[addr(_to)] += _value
                                      log Transfer(
                                            address from=_value,
                                            address to=caller,
                                            uint256 value=_to)
                                      stor15 = _value
                                      return 1
      else:
          if not caller:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                          32,
                          37,
                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                          mem[201 len 27]
          else:
              if not _to:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                              32,
                              35,
                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                              mem[199 len 29]
              else:
                  if _value > balanceOf[caller]:
                      revert with 0, 
                                  32,
                                  38,
                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                  mem[166 len 26],
                                  mem[218 len 6]
                  else:
                      balanceOf[caller] -= _value
                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                          revert with 0, 'SafeMath: addition overflow'
                      else:
                          balanceOf[addr(_to)] += _value
                          log Transfer(
                                address from=_value,
                                address to=caller,
                                uint256 value=_to)
                          balanceOf[addr(_to)] += stor13
                          return 1
  else:
      if not caller:
          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                      32,
                      37,
                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                      mem[201 len 27]
      else:
          if not _to:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                          32,
                          35,
                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                          mem[199 len 29]
          else:
              if _value > balanceOf[caller]:
                  revert with 0, 
                              32,
                              38,
                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                              mem[166 len 26],
                              mem[218 len 6]
              else:
                  balanceOf[caller] -= _value
                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                      revert with 0, 'SafeMath: addition overflow'
                  else:
                      balanceOf[addr(_to)] += _value
                      log Transfer(
                            address from=_value,
                            address to=caller,
                            uint256 value=_to)
                      return 1

def transferFrom(address _from, address _to, uint256 _value) payable: 
  require calldata.size - 4 >= 96
  if not _from:
      if uint8(stor7.field_160):
          if _to != stor10:
              if _to == addr(stor7.field_0):
                  if _value >= stor8:
                      if _from == stor9:
                          if not _from:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          37,
                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                          mem[201 len 27]
                          else:
                              if not _to:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              35,
                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                              mem[199 len 29]
                              else:
                                  if _value > balanceOf[addr(_from)]:
                                      revert with 0, 
                                                  32,
                                                  38,
                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                  mem[166 len 26],
                                                  mem[218 len 6]
                                  else:
                                      balanceOf[addr(_from)] -= _value
                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                          revert with 0, 'SafeMath: addition overflow'
                                      else:
                                          balanceOf[addr(_to)] += _value
                                          log Transfer(
                                                address from=_value,
                                                address to=_from,
                                                uint256 value=_to)
                                          if _value > allowance[addr(_from)][caller]:
                                              revert with 0, 
                                                          32,
                                                          40,
                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                          mem[264 len 24],
                                                          mem[312 len 8]
                                          else:
                                              if not _from:
                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                              else:
                                                  if not caller:
                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                  else:
                                                      allowance[addr(_from)][caller] -= _value
                                                      log Approval(
                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                            address spender=_from,
                                                            uint256 value=caller)
                                                      return 1
                      else:
                          if _from != stor10:
                              if _value != stor15:
                                  if not _from:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if stor8 > balanceOf[addr(_from)]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[addr(_from)] -= stor8
                                              if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += stor8
                                                  log Transfer(
                                                        address from=stor8,
                                                        address to=_from,
                                                        uint256 value=_to)
                                                  if _value > allowance[addr(_from)][caller]:
                                                      revert with 0, 
                                                                  32,
                                                                  40,
                                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                  mem[264 len 24],
                                                                  mem[312 len 8]
                                                  else:
                                                      if not _from:
                                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                      else:
                                                          if not caller:
                                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                          else:
                                                              allowance[addr(_from)][caller] -= _value
                                                              log Approval(
                                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                                    address spender=_from,
                                                                    uint256 value=caller)
                                                              balanceOf[addr(_from)] = 0
                                                              return 1
                              else:
                                  if balanceOf[addr(_from)] != stor15:
                                      balanceOf[addr(_from)] = 0
                                      return 0
                                  else:
                                      if not _from:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      37,
                                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                      mem[201 len 27]
                                      else:
                                          if not _to:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          35,
                                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                          mem[199 len 29]
                                          else:
                                              if _value > balanceOf[addr(_from)]:
                                                  revert with 0, 
                                                              32,
                                                              38,
                                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                              mem[166 len 26],
                                                              mem[218 len 6]
                                              else:
                                                  balanceOf[addr(_from)] -= _value
                                                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                      revert with 0, 'SafeMath: addition overflow'
                                                  else:
                                                      balanceOf[addr(_to)] += _value
                                                      log Transfer(
                                                            address from=_value,
                                                            address to=_from,
                                                            uint256 value=_to)
                                                      if _value > allowance[addr(_from)][caller]:
                                                          revert with 0, 
                                                                      32,
                                                                      40,
                                                                      0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                      mem[264 len 24],
                                                                      mem[312 len 8]
                                                      else:
                                                          if not _from:
                                                              revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                          else:
                                                              if not caller:
                                                                  revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                              else:
                                                                  allowance[addr(_from)][caller] -= _value
                                                                  log Approval(
                                                                        address owner=(allowance[addr(_from)][caller] - _value),
                                                                        address spender=_from,
                                                                        uint256 value=caller)
                                                                  balanceOf[addr(_from)] = 0
                                                                  return 1
                          else:
                              if not _from:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if _value > balanceOf[addr(_from)]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[addr(_from)] -= _value
                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += _value
                                              log Transfer(
                                                    address from=_value,
                                                    address to=_from,
                                                    uint256 value=_to)
                                              if _value > allowance[addr(_from)][caller]:
                                                  revert with 0, 
                                                              32,
                                                              40,
                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                              mem[264 len 24],
                                                              mem[312 len 8]
                                              else:
                                                  if not _from:
                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                  else:
                                                      if not caller:
                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                      else:
                                                          allowance[addr(_from)][caller] -= _value
                                                          log Approval(
                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                address spender=_from,
                                                                uint256 value=caller)
                                                          return 1
                  else:
                      balanceOf[addr(_from)] = 0
                      if not _from:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                      32,
                                      37,
                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                      mem[201 len 27]
                      else:
                          if not _to:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          35,
                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                          mem[199 len 29]
                          else:
                              if _value > balanceOf[addr(_from)]:
                                  revert with 0, 
                                              32,
                                              38,
                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                              mem[166 len 26],
                                              mem[218 len 6]
                              else:
                                  balanceOf[addr(_from)] -= _value
                                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                      revert with 0, 'SafeMath: addition overflow'
                                  else:
                                      balanceOf[addr(_to)] += _value
                                      log Transfer(
                                            address from=_value,
                                            address to=_from,
                                            uint256 value=_to)
                                      if _value > allowance[addr(_from)][caller]:
                                          revert with 0, 
                                                      32,
                                                      40,
                                                      0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                      mem[264 len 24],
                                                      mem[312 len 8]
                                      else:
                                          if not _from:
                                              revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                          else:
                                              if not caller:
                                                  revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                              else:
                                                  allowance[addr(_from)][caller] -= _value
                                                  log Approval(
                                                        address owner=(allowance[addr(_from)][caller] - _value),
                                                        address spender=_from,
                                                        uint256 value=caller)
                                                  balanceOf[addr(_from)] = 0
                                                  return 1
              else:
                  if _to == stor10:
                      if _value >= stor8:
                          if _from == stor9:
                              if not _from:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if _value > balanceOf[addr(_from)]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[addr(_from)] -= _value
                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += _value
                                              log Transfer(
                                                    address from=_value,
                                                    address to=_from,
                                                    uint256 value=_to)
                                              if _value > allowance[addr(_from)][caller]:
                                                  revert with 0, 
                                                              32,
                                                              40,
                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                              mem[264 len 24],
                                                              mem[312 len 8]
                                              else:
                                                  if not _from:
                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                  else:
                                                      if not caller:
                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                      else:
                                                          allowance[addr(_from)][caller] -= _value
                                                          log Approval(
                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                address spender=_from,
                                                                uint256 value=caller)
                                                          return 1
                          else:
                              if _from != stor10:
                                  if _value != stor15:
                                      if not _from:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      37,
                                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                      mem[201 len 27]
                                      else:
                                          if not _to:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          35,
                                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                          mem[199 len 29]
                                          else:
                                              if stor8 > balanceOf[addr(_from)]:
                                                  revert with 0, 
                                                              32,
                                                              38,
                                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                              mem[166 len 26],
                                                              mem[218 len 6]
                                              else:
                                                  balanceOf[addr(_from)] -= stor8
                                                  if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                                      revert with 0, 'SafeMath: addition overflow'
                                                  else:
                                                      balanceOf[addr(_to)] += stor8
                                                      log Transfer(
                                                            address from=stor8,
                                                            address to=_from,
                                                            uint256 value=_to)
                                                      if _value > allowance[addr(_from)][caller]:
                                                          revert with 0, 
                                                                      32,
                                                                      40,
                                                                      0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                      mem[264 len 24],
                                                                      mem[312 len 8]
                                                      else:
                                                          if not _from:
                                                              revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                          else:
                                                              if not caller:
                                                                  revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                              else:
                                                                  allowance[addr(_from)][caller] -= _value
                                                                  log Approval(
                                                                        address owner=(allowance[addr(_from)][caller] - _value),
                                                                        address spender=_from,
                                                                        uint256 value=caller)
                                                                  balanceOf[addr(_from)] = 0
                                                                  return 1
                                  else:
                                      if balanceOf[addr(_from)] != stor15:
                                          balanceOf[addr(_from)] = 0
                                          return 0
                                      else:
                                          if not _from:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          37,
                                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                          mem[201 len 27]
                                          else:
                                              if not _to:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              35,
                                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                              mem[199 len 29]
                                              else:
                                                  if _value > balanceOf[addr(_from)]:
                                                      revert with 0, 
                                                                  32,
                                                                  38,
                                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                  mem[166 len 26],
                                                                  mem[218 len 6]
                                                  else:
                                                      balanceOf[addr(_from)] -= _value
                                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                          revert with 0, 'SafeMath: addition overflow'
                                                      else:
                                                          balanceOf[addr(_to)] += _value
                                                          log Transfer(
                                                                address from=_value,
                                                                address to=_from,
                                                                uint256 value=_to)
                                                          if _value > allowance[addr(_from)][caller]:
                                                              revert with 0, 
                                                                          32,
                                                                          40,
                                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                          mem[264 len 24],
                                                                          mem[312 len 8]
                                                          else:
                                                              if not _from:
                                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                              else:
                                                                  if not caller:
                                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                  else:
                                                                      allowance[addr(_from)][caller] -= _value
                                                                      log Approval(
                                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                                            address spender=_from,
                                                                            uint256 value=caller)
                                                                      balanceOf[addr(_from)] = 0
                                                                      return 1
                              else:
                                  if not _from:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if _value > balanceOf[addr(_from)]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[addr(_from)] -= _value
                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += _value
                                                  log Transfer(
                                                        address from=_value,
                                                        address to=_from,
                                                        uint256 value=_to)
                                                  if _value > allowance[addr(_from)][caller]:
                                                      revert with 0, 
                                                                  32,
                                                                  40,
                                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                  mem[264 len 24],
                                                                  mem[312 len 8]
                                                  else:
                                                      if not _from:
                                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                      else:
                                                          if not caller:
                                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                          else:
                                                              allowance[addr(_from)][caller] -= _value
                                                              log Approval(
                                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                                    address spender=_from,
                                                                    uint256 value=caller)
                                                              return 1
                      else:
                          balanceOf[addr(_from)] = 0
                          if not _from:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          37,
                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                          mem[201 len 27]
                          else:
                              if not _to:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              35,
                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                              mem[199 len 29]
                              else:
                                  if _value > balanceOf[addr(_from)]:
                                      revert with 0, 
                                                  32,
                                                  38,
                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                  mem[166 len 26],
                                                  mem[218 len 6]
                                  else:
                                      balanceOf[addr(_from)] -= _value
                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                          revert with 0, 'SafeMath: addition overflow'
                                      else:
                                          balanceOf[addr(_to)] += _value
                                          log Transfer(
                                                address from=_value,
                                                address to=_from,
                                                uint256 value=_to)
                                          if _value > allowance[addr(_from)][caller]:
                                              revert with 0, 
                                                          32,
                                                          40,
                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                          mem[264 len 24],
                                                          mem[312 len 8]
                                          else:
                                              if not _from:
                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                              else:
                                                  if not caller:
                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                  else:
                                                      allowance[addr(_from)][caller] -= _value
                                                      log Approval(
                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                            address spender=_from,
                                                            uint256 value=caller)
                                                      balanceOf[addr(_from)] = 0
                                                      return 1
                  else:
                      if _from != addr(stor7.field_0):
                          if _value >= stor8:
                              if _from == stor9:
                                  if not _from:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if _value > balanceOf[addr(_from)]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[addr(_from)] -= _value
                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += _value
                                                  log Transfer(
                                                        address from=_value,
                                                        address to=_from,
                                                        uint256 value=_to)
                                                  if _value > allowance[addr(_from)][caller]:
                                                      revert with 0, 
                                                                  32,
                                                                  40,
                                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                  mem[264 len 24],
                                                                  mem[312 len 8]
                                                  else:
                                                      if not _from:
                                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                      else:
                                                          if not caller:
                                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                          else:
                                                              allowance[addr(_from)][caller] -= _value
                                                              log Approval(
                                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                                    address spender=_from,
                                                                    uint256 value=caller)
                                                              return 1
                              else:
                                  if _from != stor10:
                                      if _value != stor15:
                                          if not _from:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          37,
                                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                          mem[201 len 27]
                                          else:
                                              if not _to:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              35,
                                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                              mem[199 len 29]
                                              else:
                                                  if stor8 > balanceOf[addr(_from)]:
                                                      revert with 0, 
                                                                  32,
                                                                  38,
                                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                  mem[166 len 26],
                                                                  mem[218 len 6]
                                                  else:
                                                      balanceOf[addr(_from)] -= stor8
                                                      if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                                          revert with 0, 'SafeMath: addition overflow'
                                                      else:
                                                          balanceOf[addr(_to)] += stor8
                                                          log Transfer(
                                                                address from=stor8,
                                                                address to=_from,
                                                                uint256 value=_to)
                                                          if _value > allowance[addr(_from)][caller]:
                                                              revert with 0, 
                                                                          32,
                                                                          40,
                                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                          mem[264 len 24],
                                                                          mem[312 len 8]
                                                          else:
                                                              if not _from:
                                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                              else:
                                                                  if not caller:
                                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                  else:
                                                                      allowance[addr(_from)][caller] -= _value
                                                                      log Approval(
                                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                                            address spender=_from,
                                                                            uint256 value=caller)
                                                                      balanceOf[addr(_from)] = 0
                                                                      return 1
                                      else:
                                          if balanceOf[addr(_from)] != stor15:
                                              balanceOf[addr(_from)] = 0
                                              return 0
                                          else:
                                              if not _from:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              37,
                                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                              mem[201 len 27]
                                              else:
                                                  if not _to:
                                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                  32,
                                                                  35,
                                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                  mem[199 len 29]
                                                  else:
                                                      if _value > balanceOf[addr(_from)]:
                                                          revert with 0, 
                                                                      32,
                                                                      38,
                                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                      mem[166 len 26],
                                                                      mem[218 len 6]
                                                      else:
                                                          balanceOf[addr(_from)] -= _value
                                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                              revert with 0, 'SafeMath: addition overflow'
                                                          else:
                                                              balanceOf[addr(_to)] += _value
                                                              log Transfer(
                                                                    address from=_value,
                                                                    address to=_from,
                                                                    uint256 value=_to)
                                                              if _value > allowance[addr(_from)][caller]:
                                                                  revert with 0, 
                                                                              32,
                                                                              40,
                                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                              mem[264 len 24],
                                                                              mem[312 len 8]
                                                              else:
                                                                  if not _from:
                                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                                  else:
                                                                      if not caller:
                                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                      else:
                                                                          allowance[addr(_from)][caller] -= _value
                                                                          log Approval(
                                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                                address spender=_from,
                                                                                uint256 value=caller)
                                                                          balanceOf[addr(_from)] = 0
                                                                          return 1
                                  else:
                                      if not _from:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      37,
                                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                      mem[201 len 27]
                                      else:
                                          if not _to:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          35,
                                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                          mem[199 len 29]
                                          else:
                                              if _value > balanceOf[addr(_from)]:
                                                  revert with 0, 
                                                              32,
                                                              38,
                                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                              mem[166 len 26],
                                                              mem[218 len 6]
                                              else:
                                                  balanceOf[addr(_from)] -= _value
                                                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                      revert with 0, 'SafeMath: addition overflow'
                                                  else:
                                                      balanceOf[addr(_to)] += _value
                                                      log Transfer(
                                                            address from=_value,
                                                            address to=_from,
                                                            uint256 value=_to)
                                                      if _value > allowance[addr(_from)][caller]:
                                                          revert with 0, 
                                                                      32,
                                                                      40,
                                                                      0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                      mem[264 len 24],
                                                                      mem[312 len 8]
                                                      else:
                                                          if not _from:
                                                              revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                          else:
                                                              if not caller:
                                                                  revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                              else:
                                                                  allowance[addr(_from)][caller] -= _value
                                                                  log Approval(
                                                                        address owner=(allowance[addr(_from)][caller] - _value),
                                                                        address spender=_from,
                                                                        uint256 value=caller)
                                                                  return 1
                          else:
                              balanceOf[addr(_from)] = 0
                              if not _from:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if _value > balanceOf[addr(_from)]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[addr(_from)] -= _value
                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += _value
                                              log Transfer(
                                                    address from=_value,
                                                    address to=_from,
                                                    uint256 value=_to)
                                              if _value > allowance[addr(_from)][caller]:
                                                  revert with 0, 
                                                              32,
                                                              40,
                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                              mem[264 len 24],
                                                              mem[312 len 8]
                                              else:
                                                  if not _from:
                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                  else:
                                                      if not caller:
                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                      else:
                                                          allowance[addr(_from)][caller] -= _value
                                                          log Approval(
                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                address spender=_from,
                                                                uint256 value=caller)
                                                          balanceOf[addr(_from)] = 0
                                                          return 1
                      else:
                          if not _from:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          37,
                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                          mem[201 len 27]
                          else:
                              if not _to:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              35,
                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                              mem[199 len 29]
                              else:
                                  if _value > balanceOf[addr(_from)]:
                                      revert with 0, 
                                                  32,
                                                  38,
                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                  mem[166 len 26],
                                                  mem[218 len 6]
                                  else:
                                      balanceOf[addr(_from)] -= _value
                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                          revert with 0, 'SafeMath: addition overflow'
                                      else:
                                          balanceOf[addr(_to)] += _value
                                          log Transfer(
                                                address from=_value,
                                                address to=_from,
                                                uint256 value=_to)
                                          stor15 = _value
                                          if _value > allowance[addr(_from)][caller]:
                                              revert with 0, 
                                                          32,
                                                          40,
                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                          mem[264 len 24],
                                                          mem[312 len 8]
                                          else:
                                              if not _from:
                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                              else:
                                                  if not caller:
                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                  else:
                                                      allowance[addr(_from)][caller] -= _value
                                                      log Approval(
                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                            address spender=_from,
                                                            uint256 value=caller)
                                                      return 1
          else:
              if not _from:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                              32,
                              37,
                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                              mem[201 len 27]
              else:
                  if not _to:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                  32,
                                  35,
                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                  mem[199 len 29]
                  else:
                      if _value > balanceOf[addr(_from)]:
                          revert with 0, 
                                      32,
                                      38,
                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                      mem[166 len 26],
                                      mem[218 len 6]
                      else:
                          balanceOf[addr(_from)] -= _value
                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                              revert with 0, 'SafeMath: addition overflow'
                          else:
                              balanceOf[addr(_to)] += _value
                              log Transfer(
                                    address from=_value,
                                    address to=_from,
                                    uint256 value=_to)
                              if _value > allowance[addr(_from)][caller]:
                                  revert with 0, 
                                              32,
                                              40,
                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                              mem[264 len 24],
                                              mem[312 len 8]
                              else:
                                  if not _from:
                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                  else:
                                      if not caller:
                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                      else:
                                          allowance[addr(_from)][caller] -= _value
                                          log Approval(
                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                address spender=_from,
                                                uint256 value=caller)
                                          balanceOf[addr(_to)] += stor13
                                          return 1
      else:
          if not _from:
              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                          32,
                          37,
                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                          mem[201 len 27]
          else:
              if not _to:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                              32,
                              35,
                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                              mem[199 len 29]
              else:
                  if _value > balanceOf[addr(_from)]:
                      revert with 0, 
                                  32,
                                  38,
                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                  mem[166 len 26],
                                  mem[218 len 6]
                  else:
                      balanceOf[addr(_from)] -= _value
                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                          revert with 0, 'SafeMath: addition overflow'
                      else:
                          balanceOf[addr(_to)] += _value
                          log Transfer(
                                address from=_value,
                                address to=_from,
                                uint256 value=_to)
                          if _value > allowance[addr(_from)][caller]:
                              revert with 0, 
                                          32,
                                          40,
                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                          mem[264 len 24],
                                          mem[312 len 8]
                          else:
                              if not _from:
                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                              else:
                                  if not caller:
                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                  else:
                                      allowance[addr(_from)][caller] -= _value
                                      log Approval(
                                            address owner=(allowance[addr(_from)][caller] - _value),
                                            address spender=_from,
                                            uint256 value=caller)
                                      return 1
  else:
      if addr(stor7.field_0):
          if uint8(stor7.field_160):
              if _to != stor10:
                  if _to == addr(stor7.field_0):
                      if _value >= stor8:
                          if _from == stor9:
                              if not _from:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if _value > balanceOf[addr(_from)]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[addr(_from)] -= _value
                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += _value
                                              log Transfer(
                                                    address from=_value,
                                                    address to=_from,
                                                    uint256 value=_to)
                                              if _value > allowance[addr(_from)][caller]:
                                                  revert with 0, 
                                                              32,
                                                              40,
                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                              mem[264 len 24],
                                                              mem[312 len 8]
                                              else:
                                                  if not _from:
                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                  else:
                                                      if not caller:
                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                      else:
                                                          allowance[addr(_from)][caller] -= _value
                                                          log Approval(
                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                address spender=_from,
                                                                uint256 value=caller)
                                                          return 1
                          else:
                              if _from != stor10:
                                  if _value != stor15:
                                      if not _from:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      37,
                                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                      mem[201 len 27]
                                      else:
                                          if not _to:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          35,
                                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                          mem[199 len 29]
                                          else:
                                              if stor8 > balanceOf[addr(_from)]:
                                                  revert with 0, 
                                                              32,
                                                              38,
                                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                              mem[166 len 26],
                                                              mem[218 len 6]
                                              else:
                                                  balanceOf[addr(_from)] -= stor8
                                                  if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                                      revert with 0, 'SafeMath: addition overflow'
                                                  else:
                                                      balanceOf[addr(_to)] += stor8
                                                      log Transfer(
                                                            address from=stor8,
                                                            address to=_from,
                                                            uint256 value=_to)
                                                      if _value > allowance[addr(_from)][caller]:
                                                          revert with 0, 
                                                                      32,
                                                                      40,
                                                                      0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                      mem[264 len 24],
                                                                      mem[312 len 8]
                                                      else:
                                                          if not _from:
                                                              revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                          else:
                                                              if not caller:
                                                                  revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                              else:
                                                                  allowance[addr(_from)][caller] -= _value
                                                                  log Approval(
                                                                        address owner=(allowance[addr(_from)][caller] - _value),
                                                                        address spender=_from,
                                                                        uint256 value=caller)
                                                                  balanceOf[addr(_from)] = 0
                                                                  return 1
                                  else:
                                      if balanceOf[addr(_from)] != stor15:
                                          balanceOf[addr(_from)] = 0
                                          return 0
                                      else:
                                          if not _from:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          37,
                                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                          mem[201 len 27]
                                          else:
                                              if not _to:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              35,
                                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                              mem[199 len 29]
                                              else:
                                                  if _value > balanceOf[addr(_from)]:
                                                      revert with 0, 
                                                                  32,
                                                                  38,
                                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                  mem[166 len 26],
                                                                  mem[218 len 6]
                                                  else:
                                                      balanceOf[addr(_from)] -= _value
                                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                          revert with 0, 'SafeMath: addition overflow'
                                                      else:
                                                          balanceOf[addr(_to)] += _value
                                                          log Transfer(
                                                                address from=_value,
                                                                address to=_from,
                                                                uint256 value=_to)
                                                          if _value > allowance[addr(_from)][caller]:
                                                              revert with 0, 
                                                                          32,
                                                                          40,
                                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                          mem[264 len 24],
                                                                          mem[312 len 8]
                                                          else:
                                                              if not _from:
                                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                              else:
                                                                  if not caller:
                                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                  else:
                                                                      allowance[addr(_from)][caller] -= _value
                                                                      log Approval(
                                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                                            address spender=_from,
                                                                            uint256 value=caller)
                                                                      balanceOf[addr(_from)] = 0
                                                                      return 1
                              else:
                                  if not _from:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if _value > balanceOf[addr(_from)]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[addr(_from)] -= _value
                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += _value
                                                  log Transfer(
                                                        address from=_value,
                                                        address to=_from,
                                                        uint256 value=_to)
                                                  if _value > allowance[addr(_from)][caller]:
                                                      revert with 0, 
                                                                  32,
                                                                  40,
                                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                  mem[264 len 24],
                                                                  mem[312 len 8]
                                                  else:
                                                      if not _from:
                                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                      else:
                                                          if not caller:
                                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                          else:
                                                              allowance[addr(_from)][caller] -= _value
                                                              log Approval(
                                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                                    address spender=_from,
                                                                    uint256 value=caller)
                                                              return 1
                      else:
                          balanceOf[addr(_from)] = 0
                          if not _from:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          37,
                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                          mem[201 len 27]
                          else:
                              if not _to:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              35,
                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                              mem[199 len 29]
                              else:
                                  if _value > balanceOf[addr(_from)]:
                                      revert with 0, 
                                                  32,
                                                  38,
                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                  mem[166 len 26],
                                                  mem[218 len 6]
                                  else:
                                      balanceOf[addr(_from)] -= _value
                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                          revert with 0, 'SafeMath: addition overflow'
                                      else:
                                          balanceOf[addr(_to)] += _value
                                          log Transfer(
                                                address from=_value,
                                                address to=_from,
                                                uint256 value=_to)
                                          if _value > allowance[addr(_from)][caller]:
                                              revert with 0, 
                                                          32,
                                                          40,
                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                          mem[264 len 24],
                                                          mem[312 len 8]
                                          else:
                                              if not _from:
                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                              else:
                                                  if not caller:
                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                  else:
                                                      allowance[addr(_from)][caller] -= _value
                                                      log Approval(
                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                            address spender=_from,
                                                            uint256 value=caller)
                                                      balanceOf[addr(_from)] = 0
                                                      return 1
                  else:
                      if _to == stor10:
                          if _value >= stor8:
                              if _from == stor9:
                                  if not _from:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if _value > balanceOf[addr(_from)]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[addr(_from)] -= _value
                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += _value
                                                  log Transfer(
                                                        address from=_value,
                                                        address to=_from,
                                                        uint256 value=_to)
                                                  if _value > allowance[addr(_from)][caller]:
                                                      revert with 0, 
                                                                  32,
                                                                  40,
                                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                  mem[264 len 24],
                                                                  mem[312 len 8]
                                                  else:
                                                      if not _from:
                                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                      else:
                                                          if not caller:
                                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                          else:
                                                              allowance[addr(_from)][caller] -= _value
                                                              log Approval(
                                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                                    address spender=_from,
                                                                    uint256 value=caller)
                                                              return 1
                              else:
                                  if _from != stor10:
                                      if _value != stor15:
                                          if not _from:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          37,
                                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                          mem[201 len 27]
                                          else:
                                              if not _to:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              35,
                                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                              mem[199 len 29]
                                              else:
                                                  if stor8 > balanceOf[addr(_from)]:
                                                      revert with 0, 
                                                                  32,
                                                                  38,
                                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                  mem[166 len 26],
                                                                  mem[218 len 6]
                                                  else:
                                                      balanceOf[addr(_from)] -= stor8
                                                      if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                                          revert with 0, 'SafeMath: addition overflow'
                                                      else:
                                                          balanceOf[addr(_to)] += stor8
                                                          log Transfer(
                                                                address from=stor8,
                                                                address to=_from,
                                                                uint256 value=_to)
                                                          if _value > allowance[addr(_from)][caller]:
                                                              revert with 0, 
                                                                          32,
                                                                          40,
                                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                          mem[264 len 24],
                                                                          mem[312 len 8]
                                                          else:
                                                              if not _from:
                                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                              else:
                                                                  if not caller:
                                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                  else:
                                                                      allowance[addr(_from)][caller] -= _value
                                                                      log Approval(
                                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                                            address spender=_from,
                                                                            uint256 value=caller)
                                                                      balanceOf[addr(_from)] = 0
                                                                      return 1
                                      else:
                                          if balanceOf[addr(_from)] != stor15:
                                              balanceOf[addr(_from)] = 0
                                              return 0
                                          else:
                                              if not _from:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              37,
                                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                              mem[201 len 27]
                                              else:
                                                  if not _to:
                                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                  32,
                                                                  35,
                                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                  mem[199 len 29]
                                                  else:
                                                      if _value > balanceOf[addr(_from)]:
                                                          revert with 0, 
                                                                      32,
                                                                      38,
                                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                      mem[166 len 26],
                                                                      mem[218 len 6]
                                                      else:
                                                          balanceOf[addr(_from)] -= _value
                                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                              revert with 0, 'SafeMath: addition overflow'
                                                          else:
                                                              balanceOf[addr(_to)] += _value
                                                              log Transfer(
                                                                    address from=_value,
                                                                    address to=_from,
                                                                    uint256 value=_to)
                                                              if _value > allowance[addr(_from)][caller]:
                                                                  revert with 0, 
                                                                              32,
                                                                              40,
                                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                              mem[264 len 24],
                                                                              mem[312 len 8]
                                                              else:
                                                                  if not _from:
                                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                                  else:
                                                                      if not caller:
                                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                      else:
                                                                          allowance[addr(_from)][caller] -= _value
                                                                          log Approval(
                                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                                address spender=_from,
                                                                                uint256 value=caller)
                                                                          balanceOf[addr(_from)] = 0
                                                                          return 1
                                  else:
                                      if not _from:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      37,
                                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                      mem[201 len 27]
                                      else:
                                          if not _to:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          35,
                                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                          mem[199 len 29]
                                          else:
                                              if _value > balanceOf[addr(_from)]:
                                                  revert with 0, 
                                                              32,
                                                              38,
                                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                              mem[166 len 26],
                                                              mem[218 len 6]
                                              else:
                                                  balanceOf[addr(_from)] -= _value
                                                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                      revert with 0, 'SafeMath: addition overflow'
                                                  else:
                                                      balanceOf[addr(_to)] += _value
                                                      log Transfer(
                                                            address from=_value,
                                                            address to=_from,
                                                            uint256 value=_to)
                                                      if _value > allowance[addr(_from)][caller]:
                                                          revert with 0, 
                                                                      32,
                                                                      40,
                                                                      0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                      mem[264 len 24],
                                                                      mem[312 len 8]
                                                      else:
                                                          if not _from:
                                                              revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                          else:
                                                              if not caller:
                                                                  revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                              else:
                                                                  allowance[addr(_from)][caller] -= _value
                                                                  log Approval(
                                                                        address owner=(allowance[addr(_from)][caller] - _value),
                                                                        address spender=_from,
                                                                        uint256 value=caller)
                                                                  return 1
                          else:
                              balanceOf[addr(_from)] = 0
                              if not _from:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if _value > balanceOf[addr(_from)]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[addr(_from)] -= _value
                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += _value
                                              log Transfer(
                                                    address from=_value,
                                                    address to=_from,
                                                    uint256 value=_to)
                                              if _value > allowance[addr(_from)][caller]:
                                                  revert with 0, 
                                                              32,
                                                              40,
                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                              mem[264 len 24],
                                                              mem[312 len 8]
                                              else:
                                                  if not _from:
                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                  else:
                                                      if not caller:
                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                      else:
                                                          allowance[addr(_from)][caller] -= _value
                                                          log Approval(
                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                address spender=_from,
                                                                uint256 value=caller)
                                                          balanceOf[addr(_from)] = 0
                                                          return 1
                      else:
                          if _from != addr(stor7.field_0):
                              if _value >= stor8:
                                  if _from == stor9:
                                      if not _from:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      37,
                                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                      mem[201 len 27]
                                      else:
                                          if not _to:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          35,
                                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                          mem[199 len 29]
                                          else:
                                              if _value > balanceOf[addr(_from)]:
                                                  revert with 0, 
                                                              32,
                                                              38,
                                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                              mem[166 len 26],
                                                              mem[218 len 6]
                                              else:
                                                  balanceOf[addr(_from)] -= _value
                                                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                      revert with 0, 'SafeMath: addition overflow'
                                                  else:
                                                      balanceOf[addr(_to)] += _value
                                                      log Transfer(
                                                            address from=_value,
                                                            address to=_from,
                                                            uint256 value=_to)
                                                      if _value > allowance[addr(_from)][caller]:
                                                          revert with 0, 
                                                                      32,
                                                                      40,
                                                                      0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                      mem[264 len 24],
                                                                      mem[312 len 8]
                                                      else:
                                                          if not _from:
                                                              revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                          else:
                                                              if not caller:
                                                                  revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                              else:
                                                                  allowance[addr(_from)][caller] -= _value
                                                                  log Approval(
                                                                        address owner=(allowance[addr(_from)][caller] - _value),
                                                                        address spender=_from,
                                                                        uint256 value=caller)
                                                                  return 1
                                  else:
                                      if _from != stor10:
                                          if _value != stor15:
                                              if not _from:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              37,
                                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                              mem[201 len 27]
                                              else:
                                                  if not _to:
                                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                  32,
                                                                  35,
                                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                  mem[199 len 29]
                                                  else:
                                                      if stor8 > balanceOf[addr(_from)]:
                                                          revert with 0, 
                                                                      32,
                                                                      38,
                                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                      mem[166 len 26],
                                                                      mem[218 len 6]
                                                      else:
                                                          balanceOf[addr(_from)] -= stor8
                                                          if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                                              revert with 0, 'SafeMath: addition overflow'
                                                          else:
                                                              balanceOf[addr(_to)] += stor8
                                                              log Transfer(
                                                                    address from=stor8,
                                                                    address to=_from,
                                                                    uint256 value=_to)
                                                              if _value > allowance[addr(_from)][caller]:
                                                                  revert with 0, 
                                                                              32,
                                                                              40,
                                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                              mem[264 len 24],
                                                                              mem[312 len 8]
                                                              else:
                                                                  if not _from:
                                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                                  else:
                                                                      if not caller:
                                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                      else:
                                                                          allowance[addr(_from)][caller] -= _value
                                                                          log Approval(
                                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                                address spender=_from,
                                                                                uint256 value=caller)
                                                                          balanceOf[addr(_from)] = 0
                                                                          return 1
                                          else:
                                              if balanceOf[addr(_from)] != stor15:
                                                  balanceOf[addr(_from)] = 0
                                                  return 0
                                              else:
                                                  if not _from:
                                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                  32,
                                                                  37,
                                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                  mem[201 len 27]
                                                  else:
                                                      if not _to:
                                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                      32,
                                                                      35,
                                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                      mem[199 len 29]
                                                      else:
                                                          if _value > balanceOf[addr(_from)]:
                                                              revert with 0, 
                                                                          32,
                                                                          38,
                                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                          mem[166 len 26],
                                                                          mem[218 len 6]
                                                          else:
                                                              balanceOf[addr(_from)] -= _value
                                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                                  revert with 0, 'SafeMath: addition overflow'
                                                              else:
                                                                  balanceOf[addr(_to)] += _value
                                                                  log Transfer(
                                                                        address from=_value,
                                                                        address to=_from,
                                                                        uint256 value=_to)
                                                                  if _value > allowance[addr(_from)][caller]:
                                                                      revert with 0, 
                                                                                  32,
                                                                                  40,
                                                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                                  mem[264 len 24],
                                                                                  mem[312 len 8]
                                                                  else:
                                                                      if not _from:
                                                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                                      else:
                                                                          if not caller:
                                                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                          else:
                                                                              allowance[addr(_from)][caller] -= _value
                                                                              log Approval(
                                                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                                                    address spender=_from,
                                                                                    uint256 value=caller)
                                                                              balanceOf[addr(_from)] = 0
                                                                              return 1
                                      else:
                                          if not _from:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          37,
                                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                          mem[201 len 27]
                                          else:
                                              if not _to:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              35,
                                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                              mem[199 len 29]
                                              else:
                                                  if _value > balanceOf[addr(_from)]:
                                                      revert with 0, 
                                                                  32,
                                                                  38,
                                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                  mem[166 len 26],
                                                                  mem[218 len 6]
                                                  else:
                                                      balanceOf[addr(_from)] -= _value
                                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                          revert with 0, 'SafeMath: addition overflow'
                                                      else:
                                                          balanceOf[addr(_to)] += _value
                                                          log Transfer(
                                                                address from=_value,
                                                                address to=_from,
                                                                uint256 value=_to)
                                                          if _value > allowance[addr(_from)][caller]:
                                                              revert with 0, 
                                                                          32,
                                                                          40,
                                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                          mem[264 len 24],
                                                                          mem[312 len 8]
                                                          else:
                                                              if not _from:
                                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                              else:
                                                                  if not caller:
                                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                  else:
                                                                      allowance[addr(_from)][caller] -= _value
                                                                      log Approval(
                                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                                            address spender=_from,
                                                                            uint256 value=caller)
                                                                      return 1
                              else:
                                  balanceOf[addr(_from)] = 0
                                  if not _from:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if _value > balanceOf[addr(_from)]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[addr(_from)] -= _value
                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += _value
                                                  log Transfer(
                                                        address from=_value,
                                                        address to=_from,
                                                        uint256 value=_to)
                                                  if _value > allowance[addr(_from)][caller]:
                                                      revert with 0, 
                                                                  32,
                                                                  40,
                                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                  mem[264 len 24],
                                                                  mem[312 len 8]
                                                  else:
                                                      if not _from:
                                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                      else:
                                                          if not caller:
                                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                          else:
                                                              allowance[addr(_from)][caller] -= _value
                                                              log Approval(
                                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                                    address spender=_from,
                                                                    uint256 value=caller)
                                                              balanceOf[addr(_from)] = 0
                                                              return 1
                          else:
                              if not _from:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if _value > balanceOf[addr(_from)]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[addr(_from)] -= _value
                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += _value
                                              log Transfer(
                                                    address from=_value,
                                                    address to=_from,
                                                    uint256 value=_to)
                                              stor15 = _value
                                              if _value > allowance[addr(_from)][caller]:
                                                  revert with 0, 
                                                              32,
                                                              40,
                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                              mem[264 len 24],
                                                              mem[312 len 8]
                                              else:
                                                  if not _from:
                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                  else:
                                                      if not caller:
                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                      else:
                                                          allowance[addr(_from)][caller] -= _value
                                                          log Approval(
                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                address spender=_from,
                                                                uint256 value=caller)
                                                          return 1
              else:
                  if not _from:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                  32,
                                  37,
                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                  mem[201 len 27]
                  else:
                      if not _to:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                      32,
                                      35,
                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                      mem[199 len 29]
                      else:
                          if _value > balanceOf[addr(_from)]:
                              revert with 0, 
                                          32,
                                          38,
                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                          mem[166 len 26],
                                          mem[218 len 6]
                          else:
                              balanceOf[addr(_from)] -= _value
                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                  revert with 0, 'SafeMath: addition overflow'
                              else:
                                  balanceOf[addr(_to)] += _value
                                  log Transfer(
                                        address from=_value,
                                        address to=_from,
                                        uint256 value=_to)
                                  if _value > allowance[addr(_from)][caller]:
                                      revert with 0, 
                                                  32,
                                                  40,
                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                  mem[264 len 24],
                                                  mem[312 len 8]
                                  else:
                                      if not _from:
                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                      else:
                                          if not caller:
                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                          else:
                                              allowance[addr(_from)][caller] -= _value
                                              log Approval(
                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                    address spender=_from,
                                                    uint256 value=caller)
                                              balanceOf[addr(_to)] += stor13
                                              return 1
          else:
              if not _from:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                              32,
                              37,
                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                              mem[201 len 27]
              else:
                  if not _to:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                  32,
                                  35,
                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                  mem[199 len 29]
                  else:
                      if _value > balanceOf[addr(_from)]:
                          revert with 0, 
                                      32,
                                      38,
                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                      mem[166 len 26],
                                      mem[218 len 6]
                      else:
                          balanceOf[addr(_from)] -= _value
                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                              revert with 0, 'SafeMath: addition overflow'
                          else:
                              balanceOf[addr(_to)] += _value
                              log Transfer(
                                    address from=_value,
                                    address to=_from,
                                    uint256 value=_to)
                              if _value > allowance[addr(_from)][caller]:
                                  revert with 0, 
                                              32,
                                              40,
                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                              mem[264 len 24],
                                              mem[312 len 8]
                              else:
                                  if not _from:
                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                  else:
                                      if not caller:
                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                      else:
                                          allowance[addr(_from)][caller] -= _value
                                          log Approval(
                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                address spender=_from,
                                                uint256 value=caller)
                                          return 1
      else:
          addr(stor7.field_0) = _to
          if uint8(stor7.field_160):
              if _to != stor10:
                  if _to == addr(stor7.field_0):
                      if _value >= stor8:
                          if _from == stor9:
                              if not _from:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if _value > balanceOf[addr(_from)]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[addr(_from)] -= _value
                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += _value
                                              log Transfer(
                                                    address from=_value,
                                                    address to=_from,
                                                    uint256 value=_to)
                                              if _value > allowance[addr(_from)][caller]:
                                                  revert with 0, 
                                                              32,
                                                              40,
                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                              mem[264 len 24],
                                                              mem[312 len 8]
                                              else:
                                                  if not _from:
                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                  else:
                                                      if not caller:
                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                      else:
                                                          allowance[addr(_from)][caller] -= _value
                                                          log Approval(
                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                address spender=_from,
                                                                uint256 value=caller)
                                                          return 1
                          else:
                              if _from != stor10:
                                  if _value != stor15:
                                      if not _from:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      37,
                                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                      mem[201 len 27]
                                      else:
                                          if not _to:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          35,
                                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                          mem[199 len 29]
                                          else:
                                              if stor8 > balanceOf[addr(_from)]:
                                                  revert with 0, 
                                                              32,
                                                              38,
                                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                              mem[166 len 26],
                                                              mem[218 len 6]
                                              else:
                                                  balanceOf[addr(_from)] -= stor8
                                                  if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                                      revert with 0, 'SafeMath: addition overflow'
                                                  else:
                                                      balanceOf[addr(_to)] += stor8
                                                      log Transfer(
                                                            address from=stor8,
                                                            address to=_from,
                                                            uint256 value=_to)
                                                      if _value > allowance[addr(_from)][caller]:
                                                          revert with 0, 
                                                                      32,
                                                                      40,
                                                                      0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                      mem[264 len 24],
                                                                      mem[312 len 8]
                                                      else:
                                                          if not _from:
                                                              revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                          else:
                                                              if not caller:
                                                                  revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                              else:
                                                                  allowance[addr(_from)][caller] -= _value
                                                                  log Approval(
                                                                        address owner=(allowance[addr(_from)][caller] - _value),
                                                                        address spender=_from,
                                                                        uint256 value=caller)
                                                                  balanceOf[addr(_from)] = 0
                                                                  return 1
                                  else:
                                      if balanceOf[addr(_from)] != stor15:
                                          balanceOf[addr(_from)] = 0
                                          return 0
                                      else:
                                          if not _from:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          37,
                                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                          mem[201 len 27]
                                          else:
                                              if not _to:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              35,
                                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                              mem[199 len 29]
                                              else:
                                                  if _value > balanceOf[addr(_from)]:
                                                      revert with 0, 
                                                                  32,
                                                                  38,
                                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                  mem[166 len 26],
                                                                  mem[218 len 6]
                                                  else:
                                                      balanceOf[addr(_from)] -= _value
                                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                          revert with 0, 'SafeMath: addition overflow'
                                                      else:
                                                          balanceOf[addr(_to)] += _value
                                                          log Transfer(
                                                                address from=_value,
                                                                address to=_from,
                                                                uint256 value=_to)
                                                          if _value > allowance[addr(_from)][caller]:
                                                              revert with 0, 
                                                                          32,
                                                                          40,
                                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                          mem[264 len 24],
                                                                          mem[312 len 8]
                                                          else:
                                                              if not _from:
                                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                              else:
                                                                  if not caller:
                                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                  else:
                                                                      allowance[addr(_from)][caller] -= _value
                                                                      log Approval(
                                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                                            address spender=_from,
                                                                            uint256 value=caller)
                                                                      balanceOf[addr(_from)] = 0
                                                                      return 1
                              else:
                                  if not _from:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if _value > balanceOf[addr(_from)]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[addr(_from)] -= _value
                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += _value
                                                  log Transfer(
                                                        address from=_value,
                                                        address to=_from,
                                                        uint256 value=_to)
                                                  if _value > allowance[addr(_from)][caller]:
                                                      revert with 0, 
                                                                  32,
                                                                  40,
                                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                  mem[264 len 24],
                                                                  mem[312 len 8]
                                                  else:
                                                      if not _from:
                                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                      else:
                                                          if not caller:
                                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                          else:
                                                              allowance[addr(_from)][caller] -= _value
                                                              log Approval(
                                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                                    address spender=_from,
                                                                    uint256 value=caller)
                                                              return 1
                      else:
                          balanceOf[addr(_from)] = 0
                          if not _from:
                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                          32,
                                          37,
                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                          mem[201 len 27]
                          else:
                              if not _to:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              35,
                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                              mem[199 len 29]
                              else:
                                  if _value > balanceOf[addr(_from)]:
                                      revert with 0, 
                                                  32,
                                                  38,
                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                  mem[166 len 26],
                                                  mem[218 len 6]
                                  else:
                                      balanceOf[addr(_from)] -= _value
                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                          revert with 0, 'SafeMath: addition overflow'
                                      else:
                                          balanceOf[addr(_to)] += _value
                                          log Transfer(
                                                address from=_value,
                                                address to=_from,
                                                uint256 value=_to)
                                          if _value > allowance[addr(_from)][caller]:
                                              revert with 0, 
                                                          32,
                                                          40,
                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                          mem[264 len 24],
                                                          mem[312 len 8]
                                          else:
                                              if not _from:
                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                              else:
                                                  if not caller:
                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                  else:
                                                      allowance[addr(_from)][caller] -= _value
                                                      log Approval(
                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                            address spender=_from,
                                                            uint256 value=caller)
                                                      balanceOf[addr(_from)] = 0
                                                      return 1
                  else:
                      if _to == stor10:
                          if _value >= stor8:
                              if _from == stor9:
                                  if not _from:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if _value > balanceOf[addr(_from)]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[addr(_from)] -= _value
                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += _value
                                                  log Transfer(
                                                        address from=_value,
                                                        address to=_from,
                                                        uint256 value=_to)
                                                  if _value > allowance[addr(_from)][caller]:
                                                      revert with 0, 
                                                                  32,
                                                                  40,
                                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                  mem[264 len 24],
                                                                  mem[312 len 8]
                                                  else:
                                                      if not _from:
                                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                      else:
                                                          if not caller:
                                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                          else:
                                                              allowance[addr(_from)][caller] -= _value
                                                              log Approval(
                                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                                    address spender=_from,
                                                                    uint256 value=caller)
                                                              return 1
                              else:
                                  if _from != stor10:
                                      if _value != stor15:
                                          if not _from:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          37,
                                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                          mem[201 len 27]
                                          else:
                                              if not _to:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              35,
                                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                              mem[199 len 29]
                                              else:
                                                  if stor8 > balanceOf[addr(_from)]:
                                                      revert with 0, 
                                                                  32,
                                                                  38,
                                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                  mem[166 len 26],
                                                                  mem[218 len 6]
                                                  else:
                                                      balanceOf[addr(_from)] -= stor8
                                                      if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                                          revert with 0, 'SafeMath: addition overflow'
                                                      else:
                                                          balanceOf[addr(_to)] += stor8
                                                          log Transfer(
                                                                address from=stor8,
                                                                address to=_from,
                                                                uint256 value=_to)
                                                          if _value > allowance[addr(_from)][caller]:
                                                              revert with 0, 
                                                                          32,
                                                                          40,
                                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                          mem[264 len 24],
                                                                          mem[312 len 8]
                                                          else:
                                                              if not _from:
                                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                              else:
                                                                  if not caller:
                                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                  else:
                                                                      allowance[addr(_from)][caller] -= _value
                                                                      log Approval(
                                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                                            address spender=_from,
                                                                            uint256 value=caller)
                                                                      balanceOf[addr(_from)] = 0
                                                                      return 1
                                      else:
                                          if balanceOf[addr(_from)] != stor15:
                                              balanceOf[addr(_from)] = 0
                                              return 0
                                          else:
                                              if not _from:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              37,
                                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                              mem[201 len 27]
                                              else:
                                                  if not _to:
                                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                  32,
                                                                  35,
                                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                  mem[199 len 29]
                                                  else:
                                                      if _value > balanceOf[addr(_from)]:
                                                          revert with 0, 
                                                                      32,
                                                                      38,
                                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                      mem[166 len 26],
                                                                      mem[218 len 6]
                                                      else:
                                                          balanceOf[addr(_from)] -= _value
                                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                              revert with 0, 'SafeMath: addition overflow'
                                                          else:
                                                              balanceOf[addr(_to)] += _value
                                                              log Transfer(
                                                                    address from=_value,
                                                                    address to=_from,
                                                                    uint256 value=_to)
                                                              if _value > allowance[addr(_from)][caller]:
                                                                  revert with 0, 
                                                                              32,
                                                                              40,
                                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                              mem[264 len 24],
                                                                              mem[312 len 8]
                                                              else:
                                                                  if not _from:
                                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                                  else:
                                                                      if not caller:
                                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                      else:
                                                                          allowance[addr(_from)][caller] -= _value
                                                                          log Approval(
                                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                                address spender=_from,
                                                                                uint256 value=caller)
                                                                          balanceOf[addr(_from)] = 0
                                                                          return 1
                                  else:
                                      if not _from:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      37,
                                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                      mem[201 len 27]
                                      else:
                                          if not _to:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          35,
                                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                          mem[199 len 29]
                                          else:
                                              if _value > balanceOf[addr(_from)]:
                                                  revert with 0, 
                                                              32,
                                                              38,
                                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                              mem[166 len 26],
                                                              mem[218 len 6]
                                              else:
                                                  balanceOf[addr(_from)] -= _value
                                                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                      revert with 0, 'SafeMath: addition overflow'
                                                  else:
                                                      balanceOf[addr(_to)] += _value
                                                      log Transfer(
                                                            address from=_value,
                                                            address to=_from,
                                                            uint256 value=_to)
                                                      if _value > allowance[addr(_from)][caller]:
                                                          revert with 0, 
                                                                      32,
                                                                      40,
                                                                      0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                      mem[264 len 24],
                                                                      mem[312 len 8]
                                                      else:
                                                          if not _from:
                                                              revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                          else:
                                                              if not caller:
                                                                  revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                              else:
                                                                  allowance[addr(_from)][caller] -= _value
                                                                  log Approval(
                                                                        address owner=(allowance[addr(_from)][caller] - _value),
                                                                        address spender=_from,
                                                                        uint256 value=caller)
                                                                  return 1
                          else:
                              balanceOf[addr(_from)] = 0
                              if not _from:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if _value > balanceOf[addr(_from)]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[addr(_from)] -= _value
                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += _value
                                              log Transfer(
                                                    address from=_value,
                                                    address to=_from,
                                                    uint256 value=_to)
                                              if _value > allowance[addr(_from)][caller]:
                                                  revert with 0, 
                                                              32,
                                                              40,
                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                              mem[264 len 24],
                                                              mem[312 len 8]
                                              else:
                                                  if not _from:
                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                  else:
                                                      if not caller:
                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                      else:
                                                          allowance[addr(_from)][caller] -= _value
                                                          log Approval(
                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                address spender=_from,
                                                                uint256 value=caller)
                                                          balanceOf[addr(_from)] = 0
                                                          return 1
                      else:
                          if _from != addr(stor7.field_0):
                              if _value >= stor8:
                                  if _from == stor9:
                                      if not _from:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      37,
                                                      0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                      mem[201 len 27]
                                      else:
                                          if not _to:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          35,
                                                          0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                          mem[199 len 29]
                                          else:
                                              if _value > balanceOf[addr(_from)]:
                                                  revert with 0, 
                                                              32,
                                                              38,
                                                              0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                              mem[166 len 26],
                                                              mem[218 len 6]
                                              else:
                                                  balanceOf[addr(_from)] -= _value
                                                  if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                      revert with 0, 'SafeMath: addition overflow'
                                                  else:
                                                      balanceOf[addr(_to)] += _value
                                                      log Transfer(
                                                            address from=_value,
                                                            address to=_from,
                                                            uint256 value=_to)
                                                      if _value > allowance[addr(_from)][caller]:
                                                          revert with 0, 
                                                                      32,
                                                                      40,
                                                                      0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                      mem[264 len 24],
                                                                      mem[312 len 8]
                                                      else:
                                                          if not _from:
                                                              revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                          else:
                                                              if not caller:
                                                                  revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                              else:
                                                                  allowance[addr(_from)][caller] -= _value
                                                                  log Approval(
                                                                        address owner=(allowance[addr(_from)][caller] - _value),
                                                                        address spender=_from,
                                                                        uint256 value=caller)
                                                                  return 1
                                  else:
                                      if _from != stor10:
                                          if _value != stor15:
                                              if not _from:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              37,
                                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                              mem[201 len 27]
                                              else:
                                                  if not _to:
                                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                  32,
                                                                  35,
                                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                  mem[199 len 29]
                                                  else:
                                                      if stor8 > balanceOf[addr(_from)]:
                                                          revert with 0, 
                                                                      32,
                                                                      38,
                                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                      mem[166 len 26],
                                                                      mem[218 len 6]
                                                      else:
                                                          balanceOf[addr(_from)] -= stor8
                                                          if balanceOf[addr(_to)] + stor8 < balanceOf[addr(_to)]:
                                                              revert with 0, 'SafeMath: addition overflow'
                                                          else:
                                                              balanceOf[addr(_to)] += stor8
                                                              log Transfer(
                                                                    address from=stor8,
                                                                    address to=_from,
                                                                    uint256 value=_to)
                                                              if _value > allowance[addr(_from)][caller]:
                                                                  revert with 0, 
                                                                              32,
                                                                              40,
                                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                              mem[264 len 24],
                                                                              mem[312 len 8]
                                                              else:
                                                                  if not _from:
                                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                                  else:
                                                                      if not caller:
                                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                      else:
                                                                          allowance[addr(_from)][caller] -= _value
                                                                          log Approval(
                                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                                address spender=_from,
                                                                                uint256 value=caller)
                                                                          balanceOf[addr(_from)] = 0
                                                                          return 1
                                          else:
                                              if balanceOf[addr(_from)] != stor15:
                                                  balanceOf[addr(_from)] = 0
                                                  return 0
                                              else:
                                                  if not _from:
                                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                  32,
                                                                  37,
                                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                                  mem[201 len 27]
                                                  else:
                                                      if not _to:
                                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                      32,
                                                                      35,
                                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                                      mem[199 len 29]
                                                      else:
                                                          if _value > balanceOf[addr(_from)]:
                                                              revert with 0, 
                                                                          32,
                                                                          38,
                                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                          mem[166 len 26],
                                                                          mem[218 len 6]
                                                          else:
                                                              balanceOf[addr(_from)] -= _value
                                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                                  revert with 0, 'SafeMath: addition overflow'
                                                              else:
                                                                  balanceOf[addr(_to)] += _value
                                                                  log Transfer(
                                                                        address from=_value,
                                                                        address to=_from,
                                                                        uint256 value=_to)
                                                                  if _value > allowance[addr(_from)][caller]:
                                                                      revert with 0, 
                                                                                  32,
                                                                                  40,
                                                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                                  mem[264 len 24],
                                                                                  mem[312 len 8]
                                                                  else:
                                                                      if not _from:
                                                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                                      else:
                                                                          if not caller:
                                                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                          else:
                                                                              allowance[addr(_from)][caller] -= _value
                                                                              log Approval(
                                                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                                                    address spender=_from,
                                                                                    uint256 value=caller)
                                                                              balanceOf[addr(_from)] = 0
                                                                              return 1
                                      else:
                                          if not _from:
                                              revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                          32,
                                                          37,
                                                          0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                          mem[201 len 27]
                                          else:
                                              if not _to:
                                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                              32,
                                                              35,
                                                              0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                              mem[199 len 29]
                                              else:
                                                  if _value > balanceOf[addr(_from)]:
                                                      revert with 0, 
                                                                  32,
                                                                  38,
                                                                  0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                  mem[166 len 26],
                                                                  mem[218 len 6]
                                                  else:
                                                      balanceOf[addr(_from)] -= _value
                                                      if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                          revert with 0, 'SafeMath: addition overflow'
                                                      else:
                                                          balanceOf[addr(_to)] += _value
                                                          log Transfer(
                                                                address from=_value,
                                                                address to=_from,
                                                                uint256 value=_to)
                                                          if _value > allowance[addr(_from)][caller]:
                                                              revert with 0, 
                                                                          32,
                                                                          40,
                                                                          0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                          mem[264 len 24],
                                                                          mem[312 len 8]
                                                          else:
                                                              if not _from:
                                                                  revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                              else:
                                                                  if not caller:
                                                                      revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                                  else:
                                                                      allowance[addr(_from)][caller] -= _value
                                                                      log Approval(
                                                                            address owner=(allowance[addr(_from)][caller] - _value),
                                                                            address spender=_from,
                                                                            uint256 value=caller)
                                                                      return 1
                              else:
                                  balanceOf[addr(_from)] = 0
                                  if not _from:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  37,
                                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                  mem[201 len 27]
                                  else:
                                      if not _to:
                                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                      32,
                                                      35,
                                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                      mem[199 len 29]
                                      else:
                                          if _value > balanceOf[addr(_from)]:
                                              revert with 0, 
                                                          32,
                                                          38,
                                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                          mem[166 len 26],
                                                          mem[218 len 6]
                                          else:
                                              balanceOf[addr(_from)] -= _value
                                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                                  revert with 0, 'SafeMath: addition overflow'
                                              else:
                                                  balanceOf[addr(_to)] += _value
                                                  log Transfer(
                                                        address from=_value,
                                                        address to=_from,
                                                        uint256 value=_to)
                                                  if _value > allowance[addr(_from)][caller]:
                                                      revert with 0, 
                                                                  32,
                                                                  40,
                                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                                  mem[264 len 24],
                                                                  mem[312 len 8]
                                                  else:
                                                      if not _from:
                                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                      else:
                                                          if not caller:
                                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                          else:
                                                              allowance[addr(_from)][caller] -= _value
                                                              log Approval(
                                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                                    address spender=_from,
                                                                    uint256 value=caller)
                                                              balanceOf[addr(_from)] = 0
                                                              return 1
                          else:
                              if not _from:
                                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                              32,
                                              37,
                                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                              mem[201 len 27]
                              else:
                                  if not _to:
                                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                  32,
                                                  35,
                                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                  mem[199 len 29]
                                  else:
                                      if _value > balanceOf[addr(_from)]:
                                          revert with 0, 
                                                      32,
                                                      38,
                                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                      mem[166 len 26],
                                                      mem[218 len 6]
                                      else:
                                          balanceOf[addr(_from)] -= _value
                                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                              revert with 0, 'SafeMath: addition overflow'
                                          else:
                                              balanceOf[addr(_to)] += _value
                                              log Transfer(
                                                    address from=_value,
                                                    address to=_from,
                                                    uint256 value=_to)
                                              stor15 = _value
                                              if _value > allowance[addr(_from)][caller]:
                                                  revert with 0, 
                                                              32,
                                                              40,
                                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                              mem[264 len 24],
                                                              mem[312 len 8]
                                              else:
                                                  if not _from:
                                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                                  else:
                                                      if not caller:
                                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                                      else:
                                                          allowance[addr(_from)][caller] -= _value
                                                          log Approval(
                                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                                address spender=_from,
                                                                uint256 value=caller)
                                                          return 1
              else:
                  if not _from:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                  32,
                                  37,
                                  0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                  mem[201 len 27]
                  else:
                      if not _to:
                          revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                      32,
                                      35,
                                      0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                      mem[199 len 29]
                      else:
                          if _value > balanceOf[addr(_from)]:
                              revert with 0, 
                                          32,
                                          38,
                                          0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                          mem[166 len 26],
                                          mem[218 len 6]
                          else:
                              balanceOf[addr(_from)] -= _value
                              if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                                  revert with 0, 'SafeMath: addition overflow'
                              else:
                                  balanceOf[addr(_to)] += _value
                                  log Transfer(
                                        address from=_value,
                                        address to=_from,
                                        uint256 value=_to)
                                  if _value > allowance[addr(_from)][caller]:
                                      revert with 0, 
                                                  32,
                                                  40,
                                                  0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                                  mem[264 len 24],
                                                  mem[312 len 8]
                                  else:
                                      if not _from:
                                          revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                      else:
                                          if not caller:
                                              revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                          else:
                                              allowance[addr(_from)][caller] -= _value
                                              log Approval(
                                                    address owner=(allowance[addr(_from)][caller] - _value),
                                                    address spender=_from,
                                                    uint256 value=caller)
                                              balanceOf[addr(_to)] += stor13
                                              return 1
          else:
              if not _from:
                  revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                              32,
                              37,
                              0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                              mem[201 len 27]
              else:
                  if not _to:
                      revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                  32,
                                  35,
                                  0x6542455032303a207472616e7366657220746f20746865207a65726f20616464726573,
                                  mem[199 len 29]
                  else:
                      if _value > balanceOf[addr(_from)]:
                          revert with 0, 
                                      32,
                                      38,
                                      0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                      mem[166 len 26],
                                      mem[218 len 6]
                      else:
                          balanceOf[addr(_from)] -= _value
                          if balanceOf[addr(_to)] + _value < balanceOf[addr(_to)]:
                              revert with 0, 'SafeMath: addition overflow'
                          else:
                              balanceOf[addr(_to)] += _value
                              log Transfer(
                                    address from=_value,
                                    address to=_from,
                                    uint256 value=_to)
                              if _value > allowance[addr(_from)][caller]:
                                  revert with 0, 
                                              32,
                                              40,
                                              0x7342455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                              mem[264 len 24],
                                              mem[312 len 8]
                              else:
                                  if not _from:
                                      revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                                  else:
                                      if not caller:
                                          revert with 0, 32, 34, 0x7342455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                                      else:
                                          allowance[addr(_from)][caller] -= _value
                                          log Approval(
                                                address owner=(allowance[addr(_from)][caller] - _value),
                                                address spender=_from,
                                                uint256 value=caller)
                                          return 1

