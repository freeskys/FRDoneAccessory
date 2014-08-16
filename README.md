FRDoneAccessory
===============

Done button accessory for UITextfield or UITextview

## HOW TO USE
1. Import `#import <FRDoneAccessory.h>`
2. Insert accessory into your textfield
`self.yourTextfield.inputAccessoryView = [[FRDoneAccessory alloc] initWithBackground:yourBackground andButton:yourButton andTextfield:yourTextfield];`
3. Or use native styling by using `self.yourTextfield.inputAccessoryView = [[FRDoneAccessory alloc] initWithTextField:self.yourTextfield];`

## Screenshot
### Native
![Native](http://blezcode.com/images/github/FRDoneAccessory/Screenshot_Native.jpg)

### Styled
![Styled](http://blezcode.com/images/github/FRDoneAccessory/Screenshot_Styled.jpg)

## TODO
1. Support button position

## Release
1. 0.1 First public release
2. 0.2 Add native style