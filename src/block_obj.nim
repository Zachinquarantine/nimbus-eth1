# Nimbus
# Copyright (c) 2018 Status Research & Development GmbH
# Licensed under either of
#  * Apache License, version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
#  * MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)
# at your option. This file may not be copied, modified, or distributed except according to those terms.

import
  logging, constants, utils / header, ttmath

type
  CountableList*[T] = ref object
    elements: seq[T] # TODO

  Block* = ref object of RootObj
    header*: Header
    uncles*: CountableList[Header]
    blockNumber*: UInt256
