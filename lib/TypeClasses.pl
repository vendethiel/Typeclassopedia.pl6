# http://www.haskell.org/onlinereport/basic.html

role Num[::T] {
}


role Eq[::T] {
}

role Ord[::T] does Eq[T] {
}


role Enum[::T] {
}

role Bounded[::T] {
}


role Show[::T] {
}

role Read[::T] {
}
