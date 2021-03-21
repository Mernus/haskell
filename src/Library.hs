-- Lab 3.5
module Library where

import           Data.Time
import           Data.Time.Calendar.Month
import           Data.Typeable


data BibliographicResource = Book String String | Magazine String Month | Newspaper String Day
                              deriving (Eq, Show, Read)
type BibliographicResourceObject = BibliographicResource


someDate :: Day
someDate = fromGregorian 2007 10 15
someAnotherDate :: Day
someAnotherDate = addDays 5 someDate
someMonth :: Month
someMonth = YearMonth 2005 8


book1 :: BibliographicResourceObject
book1 = Book "My history" "Denis"
book2 :: BibliographicResourceObject
book2 = Book "SomeName" "Alex"
magazine :: BibliographicResourceObject
magazine = Magazine "SomeMagazineName" someMonth
newspaper1 :: BibliographicResourceObject
newspaper1 = Newspaper "SomeMagazineName" someDate
newspaper2 :: BibliographicResourceObject
newspaper2 = Newspaper "SomeAnotherMagazineName" someAnotherDate


bibliographicEntities :: [BibliographicResourceObject]
bibliographicEntities = [
                          book1, book2,
                          magazine, newspaper1,
                          newspaper2
                        ]


isPeriodic :: BibliographicResourceObject -> Bool
isPeriodic (Book _ _) = False
isPeriodic _          = True
isPeriodicResultTrue :: Bool
isPeriodicResultTrue = isPeriodic $ bibliographicEntities!!2
isPeriodicResultFalse :: Bool
isPeriodicResultFalse = isPeriodic $ bibliographicEntities!!0


getName :: BibliographicResourceObject -> String
getName (Book name _)      = name
getName (Magazine name _)  = name
getName (Newspaper name _) = name

getByTitle :: String -> [BibliographicResourceObject]
getByTitle name = filter (\x -> getName x == name) bibliographicEntities
getByTitleResult :: [BibliographicResourceObject]
getByTitleResult = getByTitle "SomeName"


getIntMonth :: BibliographicResourceObject -> MonthOfYear
getIntMonth (Book _ _)      = -1
getIntMonth (Magazine _ month) = let (y, m, d) = toGregorian $ MonthDay month 1 in m
getIntMonth (Newspaper _ date) = let (y, m, d) = toGregorian $ date in m

getByMonth :: Int -> [BibliographicResourceObject]
getByMonth month = filter(\x -> getIntMonth x == month) bibliographicEntities
getByMonthResult :: [BibliographicResourceObject]
getByMonthResult = getByMonth 10


getByMonths :: [Int] -> [BibliographicResourceObject]
getByMonths []     = []
getByMonths (x:xs) = getByMonth x ++ getByMonths xs
getByMonthsResult :: [BibliographicResourceObject]
getByMonthsResult = getByMonths [10, 8]


getAuthorList :: BibliographicResourceObject -> [String]
getAuthorList (Book _ author) = [author]
getAuthorList (Magazine _ _)  = []
getAuthorList (Newspaper _ _) = []

getAuthors :: [BibliographicResourceObject] -> [String]
getAuthors []     = []
getAuthors (x:xs) =  getAuthorList x ++ getAuthors xs
getAuthorsResult :: [String]
getAuthorsResult = getAuthors bibliographicEntities
