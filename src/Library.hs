module Library where

import           Data.Time
import           Data.Time.Calendar.Month
import           Data.Typeable


data Book = Book {
              bookAuthor :: String,
              bookName   :: String
            }
            deriving (Eq, Show, Read)
type BookObject = Book


data Magazine = Magazine {
              magazineName         :: String,
              magazineMonthAndYear :: Month
            }
            deriving (Eq, Show, Read)
type MagazineObject = Magazine


data Newspaper = Newspaper {
              newspaperName :: String,
              newspaperDate :: Day
            }
            deriving (Eq, Show, Read)
type NewspaperObject = Newspaper


data BibliographicResource = BookResource Book | MagazineResource Magazine | NewspaperResource Newspaper
                              deriving (Eq, Show, Read)
type BibliographicResourceObject = BibliographicResource


someDate :: Day
someDate = fromGregorian 2007 10 15
someAnotherDate :: Day
someAnotherDate = addDays 5 someDate
someMonth :: Month
someMonth = YearMonth 2005 8


book1 :: BookObject
book1 = Book "Denis" "My history"
book2 :: BookObject
book2 = Book "Alex" "SomeName"
magazine :: MagazineObject
magazine = Magazine "SomeMagazineName" someMonth
newspaper1 :: NewspaperObject
newspaper1 = Newspaper "SomeMagazineName" someDate
newspaper2 :: NewspaperObject
newspaper2 = Newspaper "SomeAnotherMagazineName" someAnotherDate


bibliographicEntities :: [BibliographicResourceObject]
bibliographicEntities = [
                          BookResource book1, BookResource book2,
                          MagazineResource magazine, NewspaperResource newspaper1,
                          NewspaperResource newspaper2
                        ]


isPeriodic :: (Typeable a) => a -> Bool
isPeriodic (BibliographicResource var) = True
isPeriodic _                           = False
isPeriodicResultTrue :: Bool
isPeriodicResultTrue = isPeriodic(bibliographicEntities!!0)
isPeriodicResultFalse :: Bool
isPeriodicResultFalse = isPeriodic 2
