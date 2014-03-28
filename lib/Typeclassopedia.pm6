# http://www.haskell.org/wikiupload/d/df/Typeclassopedia-diagram.png

# level 1
role Functor[::T] {
}

role Apply[::T] {
}

role Semigroup[::T] {
}

#level 2
role Comonad[::T] does Functor[T] {
}

role Applicative[::T] does Functor[T] does Apply[T] {
}

role Monoid[::T] does Semigroup[T] {
}

role Category[::T] {
}

# level 3
role Alternative[::T] does Applicative[T] does Monoid[T] {
}

role Foldable[::T] does Monoid[T] {
}

role Monad[::T] does Applicative[T] does Monoid[T] {
}

role Arrow[::T] does Category[T] {
}

role ArrowZero[::T] does Arrow[T] {
}

role ArrowPlus[::T] does Monoid[T] does ArrowZero[T] {
}

# level 4
role Traversable[::T] does Functor[T] does Foldable[T] {
}

role MonadFix[::T] does Monad[T] {
}

role MonadPlus[::T] does Monad[T] does Monoid[T] { # Monoid is a dotted arrow, Monad is Solid arrow
}

role ArrowApply[::T] does Monad[T] does Arrow[T] {
}

role ArrowChoice[::T] does Arrow[T] {
}

role ArrowLoop[::T] does Arrow[T] {
}
