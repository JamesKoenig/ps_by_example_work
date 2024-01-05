module Test.MySolutions where

import Prelude ( (==), (<<<), (&&) )
import Data.List (filter, head, nubByEq)
import Data.AddressBook (AddressBook, Entry, Address)
import Data.Maybe (Maybe)
import Data.Foldable (any)

-- Note to reader: Add your solutions to this file
findEntryByStreet :: String -> AddressBook -> Maybe Entry
findEntryByStreet street = head <<< filter filterEntryByStreet
  where
    filterEntryByStreet :: Entry -> Boolean
    filterEntryByStreet { address: { street: entryStreet } } =
      entryStreet == street

isInBook :: String -> String -> AddressBook -> Boolean
isInBook fName lName book = any checkEntry book
  where
    checkEntry :: Entry -> Boolean
    checkEntry { firstName, lastName } =
      fName == firstName && lName == lastName

removeDuplicates :: AddressBook -> AddressBook
removeDuplicates = nubByEq entryEqual
  where
    entryEqual :: Entry -> Entry -> Boolean
    entryEqual left right =
      (namesEqual left right) -- && (entryAddressesEqual left right)
      where
        namesEqual :: Entry -> Entry -> Boolean
        namesEqual left right =
          left.firstName == right.firstName && left.lastName == right.lastName
          {-
        entryAddressesEqual :: Entry -> Entry -> Boolean
        entryAddressesEqual =
          applyTwoAddresses addressesEqual
          where
            applyTwoAddresses :: forall a . (Address -> Address -> a) -> Entry -> Entry -> a
            applyTwoAddresses f entl entr = f entl.address entr.address

            addressesEqual :: Address -> Address -> Boolean
            addressesEqual adrl adrr =
              adrl.street == adrr.street &&
              adrl.city   == adrr.city   &&
              adrl.state  == adrr.state
              -}
