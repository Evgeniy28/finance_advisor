$(document).ready ->
  window.sr = ScrollReveal()

  top =
    origin: 'top'
    distance: '24px'
    duration: 1500
    scale: 1.05

  bottom =
    origin: 'bottom'
    distance: '64px'
    duration: 900
    delay: 1500
    scale: 1

  bottomFast =
    origin: 'bottom'
    distance: '32px'
    duration: 600
    delay: 800
    scale: 0.9

  # Header
  sr.reveal '.header__title', top
  sr.reveal '.header__list', bottom
  sr.reveal '.header__button', delay: 2200

  # Deposit
  sr.reveal '.deposit-block__title', top
  sr.reveal '.deposit-block__list', bottomFast
  sr.reveal '.deposit-block__call-me', bottomFast
  sr.reveal '.for-scroll', bottomFast

  # Calculation
  sr.reveal '.gradient-wrapper__title', top
  sr.reveal '.calculation__title', bottomFast
  sr.reveal '.calculation__info', bottomFast
  sr.reveal '.calculation__percent', bottomFast
  sr.reveal '.calculation__text-center', bottomFast
  sr.reveal '.calculation__item', bottomFast

  # License
  sr.reveal '.license__img-block', bottomFast

  # Reviews
  sr.reveal '.reviews__title', top
  sr.reveal '.reviews__list', bottomFast

  # Form
  sr.reveal '.form__title', top
  sr.reveal '.customer-form', bottomFast

  return
