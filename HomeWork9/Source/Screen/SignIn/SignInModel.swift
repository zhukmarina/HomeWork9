//
//  SignInModel.swift
//  HomeWork9
//

//

import Foundation

class SignInModel {
    
    weak var delegate: SignInModelDelegate?
    
    var emailValid: Bool = false
    var passwordValid: Bool = false
    
    var email: String = ""{
        didSet{
         validateEmail()
        }
    }
    
    var password: String = ""{
        didSet{
            validatePassword()
        }
    }
    
    private func validateEmail(){
        let validator = EmailValidator()
        let errorText = validator.validate(text: email)
        emailValid = errorText == nil
        delegate?.didValidate(errorText: errorText, textType: .error)
    }
    
    private func validatePassword(){
        let validator = PasswordValidator()
        let errorText = validator.validate(text: password)
        passwordValid = errorText == nil
        delegate?.didValidate(errorText: errorText, textType: .error)
    }
}
