select name
, persistentIdentifier
, blocked
, blockedByFutureStartDate
, childrenCount
, childrenCountAvailable
, childrenCountCompleted
, completeWhenChildrenComplete
, containingProjectContainsSingletons
, containsNextTask
, dateAdded
, datetime(dateAdded + 978307200, 'unixepoch' ) dateAddedUnixepoch
, datetime(dateAdded + 978307200, 'unixepoch', 'localtime') dateAddedLocaltime
, dateModified
, datetime(dateModified + 978307200, 'unixepoch' ) dateModifiedUnixepoch
, datetime(dateModified + 978307200, 'unixepoch', 'localtime') dateAddedLocaltime
, dateCompleted
, datetime(dateCompleted + 978307200, 'unixepoch' ) dateCompletedUnixepoch
, datetime(dateCompleted + 978307200, 'unixepoch', 'localtime') dateCompletedLocalTime 
, effectiveContainingProjectInfoActive
, effectiveContainingProjectInfoRemaining
, effectiveFlagged
, effectiveInInbox
, flagged
, hasCompletedDescendant
, hasFlaggedTaskInTree
, hasUnestimatedLeafTaskInTree
, inInbox
, isDueSoon
, isOverdue
, rank
, sequential
from task where dateCompleted is  null and persistentIdentifier = 'e9O4TkfL_DO' ;