//
//  ButtonLayout.swift
//  QuickScrub
//
//  Created by Michael Dichiara on 9/22/20.
//

import UIKit
import MessageUI
import SafariServices

public var messagebody = ""


class ButtonLayout: UIViewController {
    

    @IBOutlet weak var SAButton: UIButton!
    @IBOutlet weak var RPButton: UIButton!

    @IBOutlet weak var CUButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messagebody = ""
        SAButton.layer.cornerRadius = 7
        SAButton.layer.shadowColor = UIColor.gray.cgColor
        SAButton.layer.shadowRadius = 6
        SAButton.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        RPButton.layer.cornerRadius = 7
        RPButton.layer.shadowColor = UIColor.gray.cgColor
        RPButton.layer.shadowRadius = 6
        RPButton.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        CUButton.layer.cornerRadius = 7
        CUButton.layer.shadowColor = UIColor.gray.cgColor
        CUButton.layer.shadowRadius = 6
        CUButton.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func appoint(_ sender: Any) {
        self.performSegue(withIdentifier: "movetoSA", sender: self)
    }
}

class SA: UIViewController {
    
    @IBOutlet weak var Return: UIButton!
    
    @IBOutlet weak var CarpetButton: UIButton!
    
    @IBOutlet weak var Carsbutton: UIButton!
    
    @IBOutlet weak var Rugsbutton: UIButton!
    
    @IBOutlet weak var Ubutton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        CarpetButton.layer.cornerRadius = 7
        CarpetButton.layer.shadowColor = UIColor.gray.cgColor
        CarpetButton.layer.shadowRadius = 6
        CarpetButton.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        
        Return.layer.cornerRadius = 7
        Return.layer.shadowColor = UIColor.gray.cgColor
        Return.layer.shadowRadius = 6
        Return.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        
        
        Carsbutton.layer.cornerRadius = 7
        Carsbutton.layer.shadowColor = UIColor.gray.cgColor
        Carsbutton.layer.shadowRadius = 6
        Carsbutton.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        Rugsbutton.layer.cornerRadius = 7
        Rugsbutton.layer.shadowColor = UIColor.gray.cgColor
        Rugsbutton.layer.shadowRadius = 6
        Rugsbutton.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        Ubutton.layer.cornerRadius = 7
        Ubutton.layer.shadowColor = UIColor.gray.cgColor
        Ubutton.layer.shadowRadius = 6
        Ubutton.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        CarpetSF = ""
        CarpetO = ""
        CarpetM = ""
        CswitchAss = "off"
        CswitchSoda = "off"
        CswitchWine = "off"
        CswitchMold = "off"
        CswitchDirt = "off"
        RugSF = ""
        RugO = ""
        RugM = ""
        RswitchAss = "off"
        RswitchSoda = "off"
        RswitchWine = "off"
        RswitchMold = "off"
        RswitchDirt = "off"
        Csize = ""
        Floor = "off"
        Front = "off"
        FR = "off"
        T = "off"
        CD = "off"
        CC = "off"
        item = ""
        mup = ""
        UswitchAss = "off"
        UswitchSoda = "off"
        UswitchWine = "off"
        UswitchMold = "off"
        UswitchDirt = "off"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func Csurvey(_ sender: Any) {
        self.performSegue(withIdentifier: "movetoCarpetSurvey", sender: self)
    }
    
    
    @IBAction func CarsSurvey(_ sender: Any) {
        self.performSegue(withIdentifier: "movetoCarSurvey", sender: self)
    }
    
    
    @IBAction func RugsSurvey(_ sender: Any) {
        self.performSegue(withIdentifier: "movetoRugsSurvey", sender: self)
    }
    
    
    @IBAction func UpSurvey(_ sender: Any) {
        self.performSegue(withIdentifier: "movetoUp", sender: self)
    }
    
    @IBAction func Return(_ sender: Any) {
        self.performSegue(withIdentifier: "movetoHome", sender: self)
    }
    
}

public var CarpetSF = "empty"
public var CarpetO = "empty"
public var CarpetM = "empty"
public var CswitchAss = "off"
public var CswitchSoda = "off"
public var CswitchWine = "off"
public var CswitchMold = "off"
public var CswitchDirt = "off"

class CS: UIViewController{
    
    @IBOutlet weak var Back: UIButton!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var SFtext: UITextField!
    @IBOutlet weak var Otext: UITextField!
    @IBOutlet weak var Madetext: UITextField!
    
    @IBOutlet weak var AssSwitch: UISwitch!
    @IBOutlet weak var SodaSwitch: UISwitch!
    @IBOutlet weak var WineSwitch: UISwitch!
    @IBOutlet weak var DirtSwitch: UISwitch!
    @IBOutlet weak var MoldSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Next.layer.cornerRadius = 7
        Next.layer.shadowColor = UIColor.gray.cgColor
        Next.layer.shadowRadius = 6
        Next.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        
        Back.layer.cornerRadius = 7
        Back.layer.shadowColor = UIColor.gray.cgColor
        Back.layer.shadowRadius = 6
        Back.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        AssSwitch.isOn = false
        SodaSwitch.isOn = false
        WineSwitch.isOn = false
        DirtSwitch.isOn = false
        MoldSwitch.isOn = false
        
        SFtext.delegate = self
        Otext.delegate = self
        Madetext.delegate = self
        
    }
    
    
    @IBAction func Nextmove(_ sender: Any) {
        
        
        if(AssSwitch.isOn == true){
            CswitchAss = "Animal stains or smells"
        }
        if(SodaSwitch.isOn == true){
            CswitchSoda = "Soda/Beverage Stains"
        }
        if(WineSwitch.isOn == true){
            CswitchWine = "Red wine or similar stains"
        }
        if(DirtSwitch.isOn == true){
            CswitchDirt = "Dirt, dust, or grime"
        }
        if(MoldSwitch.isOn == true){
            CswitchMold = "Mold"
        }
        CarpetSF = SFtext.text!
        CarpetO = Otext.text!
        CarpetM = Madetext.text!
        
        messagebody = messagebody+"Survey: Carpet Survey \nEstimated Square Feet: \(CarpetSF) \nCondition: \(CswitchAss) \n\t\t\(CswitchSoda) \n\t\t\(CswitchWine)\n\t\t\(CswitchDirt)\n\t\t\(CswitchMold)\nEstimated Age: \(CarpetO)\nWhat the carpet is made of: \(CarpetM)\n\n\n"
        
        self.performSegue(withIdentifier: "movetoSubmit", sender: self)
    }
    
    
    @IBAction func Back(_ sender: Any) {
        self.performSegue(withIdentifier: "moveBackC", sender: self)
    }
    
}


public var RugSF = "empty"
public var RugO = "empty"
public var RugM = "empty"
public var RswitchAss = "off"
public var RswitchSoda = "off"
public var RswitchWine = "off"
public var RswitchMold = "off"
public var RswitchDirt = "off"



class RS: UIViewController{
    
    @IBOutlet weak var Back: UIButton!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var SFtext: UITextField!
    @IBOutlet weak var Otext: UITextField!
    @IBOutlet weak var Madetext: UITextField!
    
    @IBOutlet weak var AssSwitch: UISwitch!
    @IBOutlet weak var SodaSwitch: UISwitch!
    @IBOutlet weak var WineSwitch: UISwitch!
    @IBOutlet weak var DirtSwitch: UISwitch!
    @IBOutlet weak var MoldSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Next.layer.cornerRadius = 7
        Next.layer.shadowColor = UIColor.gray.cgColor
        Next.layer.shadowRadius = 6
        Next.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        Back.layer.cornerRadius = 7
        Back.layer.shadowColor = UIColor.gray.cgColor
        Back.layer.shadowRadius = 6
        Back.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        AssSwitch.isOn = false
        SodaSwitch.isOn = false
        WineSwitch.isOn = false
        DirtSwitch.isOn = false
        MoldSwitch.isOn = false
        
        SFtext.delegate = self
        Otext.delegate = self
        Madetext.delegate = self
        
    }
    
    
    @IBAction func Nextmove(_ sender: Any) {
        
        
        
        if(AssSwitch.isOn == true){
            RswitchAss = "Animal stains or smells"
        }
        if(SodaSwitch.isOn == true){
            RswitchSoda = "Soda/Beverage Stains"
        }
        if(WineSwitch.isOn == true){
            RswitchWine = "Red wine or similar stains"
        }
        if(DirtSwitch.isOn == true){
            RswitchDirt = "Dirt, dust, or grime"
        }
        if(MoldSwitch.isOn == true){
            RswitchMold = "Mold"
        }
        RugSF = SFtext.text!
        RugO = Otext.text!
        RugM = Madetext.text!
        
        messagebody += """
            Survey: Rug Survey
            Estimated Square Feet: \(RugSF)
            Condition:
            \(RswitchAss)
            \(RswitchSoda)
            \(RswitchWine)
            \(RswitchDirt)
            \(RswitchMold)
            Estimated Age: \(RugO)
            What the carpet is made of: \(RugM)\n\n\n
            """
        self.performSegue(withIdentifier: "movetoSub", sender: self)
    }
    
    @IBAction func Back(_ sender: Any) {
        self.performSegue(withIdentifier: "moveBackR", sender: self)
    }
    
}

class Submit: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var SButton: UIButton!
    @IBOutlet weak var SNSButton: UIButton!
 
    
    @IBOutlet weak var enter: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SButton.layer.cornerRadius = 7
        SButton.layer.shadowColor = UIColor.gray.cgColor
        SButton.layer.shadowRadius = 6
        SButton.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        enter.layer.cornerRadius = 7
        enter.layer.shadowColor = UIColor.gray.cgColor
        enter.layer.shadowRadius = 6
        enter.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        
        SNSButton.layer.cornerRadius = 7
        SNSButton.layer.shadowColor = UIColor.gray.cgColor
        SNSButton.layer.shadowRadius = 6
        SNSButton.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Enter(_ sender: Any) {
        self.performSegue(withIdentifier: "movehome", sender: self)
}
    


    
    @IBAction func SendEmail(_ sender: Any) {
        if MFMailComposeViewController.canSendMail(){
            let mail = MFMailComposeViewController()
            mail.setToRecipients(["michael.j.dichiara@ttu.edu"])
            mail.setSubject("Survey")
            mail.setMessageBody(messagebody, isHTML: false)
            mail.mailComposeDelegate = self
            present(mail, animated: true, completion: nil)
        }
    }
    
    

func mailComposeController(_ controller:MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
    controller.dismiss(animated: true, completion: nil)
}
    }








extension UIViewController: UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField)-> Bool {
        textField.resignFirstResponder()
        return true
    }
}

public var Csize = ""
public var Floor = "off"
public var Front = "off"
public var FR = "off"
public var T = "off"
public var CD = "off"
public var CC = "off"


class CARS: UIViewController{
    
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var Back: UIButton!
    @IBOutlet weak var OnerowSwitch: UISwitch!
    @IBOutlet weak var TworowSwitch: UISwitch!
    @IBOutlet weak var ThreerowSwitch: UISwitch!
    @IBOutlet weak var FourrowSwitch: UISwitch!
    @IBOutlet weak var LimoSwitch: UISwitch!
    @IBOutlet weak var FloorSwitch: UISwitch!
    @IBOutlet weak var FrontSwitch: UISwitch!
    @IBOutlet weak var FRSwitch: UISwitch!
    @IBOutlet weak var TSwitch: UISwitch!
    @IBOutlet weak var CDSwitch: UISwitch!
    @IBOutlet weak var CCSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Next.layer.cornerRadius = 7
        Next.layer.shadowColor = UIColor.gray.cgColor
        Next.layer.shadowRadius = 6
        Next.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        Back.layer.cornerRadius = 7
        Back.layer.shadowColor = UIColor.gray.cgColor
        Back.layer.shadowRadius = 6
        Back.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        OnerowSwitch.isOn = false
        TworowSwitch.isOn = false
        ThreerowSwitch.isOn = false
        FourrowSwitch.isOn = false
        LimoSwitch.isOn = false
        FloorSwitch.isOn = false
        FrontSwitch.isOn = false
        FRSwitch.isOn = false
        TSwitch.isOn = false
        CDSwitch.isOn = false
        CCSwitch.isOn = false
        
        
      
        
    }
    
    
    @IBAction func Nextmove(_ sender: Any) {
  
        if(OnerowSwitch.isOn == true){
            Csize = "One row of seats"
        }
        if(TworowSwitch.isOn == true){
            Csize = "Two rows of seats"
        }
        if(ThreerowSwitch.isOn == true){
            Csize = "Three rows of seats"
        }
        if(FourrowSwitch.isOn == true){
            Csize = "Four rows of seats"
        }
        if(LimoSwitch.isOn == true){
            Csize = "Limosine and Charterbus"
        }
        if(FloorSwitch.isOn == true){
            Floor = "Floorboard/Shoeguards"
        }
        if(FrontSwitch.isOn == true){
            Front = "Front of seats"
        }
        if(FRSwitch.isOn == true){
            FR = "Front and back of seats"
        }
        if(TSwitch.isOn == true){
            T = "Trunk floor"
        }
        if(CDSwitch.isOn == true){
            CD = "Car door arm rests"
        }
        if(CCSwitch.isOn == true){
            CC = "Center console"
        }

    messagebody = messagebody+"Survey: Car Survey \nVehicle Size: \(Csize) \nWhat do you need to be cleaned?\n\(Floor)\n\(Front)\n\(FR)\n\(T)\n\(CD)\n\(CC)\n\n\n"
        
        self.performSegue(withIdentifier: "movetoSubm", sender: self)}
        
        
    @IBAction func Oneon(_ sender: Any) {
        TworowSwitch.isOn = false
        ThreerowSwitch.isOn = false
        FourrowSwitch.isOn = false
        LimoSwitch.isOn = false
    }
    
        
    @IBAction func Twoon(_ sender: Any) {
        OnerowSwitch.isOn = false
        ThreerowSwitch.isOn = false
        FourrowSwitch.isOn = false
        LimoSwitch.isOn = false
    }
    
 
    @IBAction func Threeon(_ sender: Any) {
        OnerowSwitch.isOn = false
        TworowSwitch.isOn = false
        FourrowSwitch.isOn = false
        LimoSwitch.isOn = false
    }
    
    @IBAction func Fouron(_ sender: Any) {
        OnerowSwitch.isOn = false
        TworowSwitch.isOn = false
        ThreerowSwitch.isOn = false
        LimoSwitch.isOn = false
    }
    
    @IBAction func Limon(_ sender: Any) {
        OnerowSwitch.isOn = false
        TworowSwitch.isOn = false
        ThreerowSwitch.isOn = false
        FourrowSwitch.isOn = false
    }
}

public var item = ""
public var mup = "empty"
public var UswitchAss = "off"
public var UswitchSoda = "off"
public var UswitchWine = "off"
public var UswitchMold = "off"
public var UswitchDirt = "off"
class Up: UIViewController {
    
    @IBOutlet weak var Couchswitch: UISwitch!
    
    @IBOutlet weak var ChairSwitch: UISwitch!
    @IBOutlet weak var Footswitch: UISwitch!
    
    @IBOutlet weak var Pillowswitch: UISwitch!
    @IBOutlet weak var Mattress: UISwitch!
    
    @IBOutlet weak var Madetext: UITextField!
    
    @IBOutlet weak var AssSwitch: UISwitch!
    @IBOutlet weak var SodaSwitch: UISwitch!
    @IBOutlet weak var WineSwitch: UISwitch!
    @IBOutlet weak var DirtSwitch: UISwitch!
    @IBOutlet weak var MoldSwitch: UISwitch!
    @IBOutlet weak var Back: UIButton!
    @IBOutlet weak var Next: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Next.layer.cornerRadius = 7
        Next.layer.shadowColor = UIColor.gray.cgColor
        Next.layer.shadowRadius = 6
        Next.titleLabel?.adjustsFontSizeToFitWidth = true;
        
        Back.layer.cornerRadius = 7
        Back.layer.shadowColor = UIColor.gray.cgColor
        Back.layer.shadowRadius = 6
        Back.titleLabel?.adjustsFontSizeToFitWidth = true;
        Couchswitch.isOn = false
        ChairSwitch.isOn = false
        Footswitch.isOn = false
        Pillowswitch.isOn = false
        Mattress.isOn = false
        
        Madetext.delegate = self
        
        AssSwitch.isOn = false
        SodaSwitch.isOn = false
        WineSwitch.isOn = false
        DirtSwitch.isOn = false
        MoldSwitch.isOn = false
    }
    
    
    @IBAction func Couchon(_ sender: Any) {
        ChairSwitch.isOn = false
        Footswitch.isOn = false
        Pillowswitch.isOn = false
        Mattress.isOn = false
    }
    
    @IBAction func Chairon(_ sender: Any) {
        Couchswitch.isOn = false
        Footswitch.isOn = false
        Pillowswitch.isOn = false
        Mattress.isOn = false
    }
    
    @IBAction func Footon(_ sender: Any) {
        Couchswitch.isOn = false
        ChairSwitch.isOn = false
        Pillowswitch.isOn = false
        Mattress.isOn = false
    }
    
    @IBAction func Pillowon(_ sender: Any) {
        Couchswitch.isOn = false
        ChairSwitch.isOn = false
        Footswitch.isOn = false
        Mattress.isOn = false
    }
    
    @IBAction func Mon(_ sender: Any) {
        Couchswitch.isOn = false
        ChairSwitch.isOn = false
        Footswitch.isOn = false
        Pillowswitch.isOn = false
    }
    
    @IBAction func Nextmove(_ sender: Any) {
  
        if(AssSwitch.isOn == true){
            UswitchAss = "Animal stains or smells"
        }
        if(SodaSwitch.isOn == true){
            UswitchSoda = "Soda/Beverage Stains"
        }
        if(WineSwitch.isOn == true){
            UswitchWine = "Red wine or similar stains"
        }
        if(DirtSwitch.isOn == true){
            UswitchDirt = "Dirt, dust, or grime"
        }
        if(MoldSwitch.isOn == true){
            UswitchMold = "Mold"
        }
        if(Couchswitch.isOn == true){
            item = "Couch"
        }
        if(ChairSwitch.isOn == true){
            item = "Chair(s)"
        }
        if(Footswitch.isOn == true){
            item = "Footrest"
        }
        if(Pillowswitch.isOn == true){
            item = "Pillows"
        }
        if(Mattress.isOn == true){
            item = "Mattress"
        }
        mup = Madetext.text!
        
        
        messagebody = messagebody+"Survey: Upholstery Survey \nUpholstery: \(item)\nMade of: \(mup)\nCondition:\n \(UswitchAss) \n\(UswitchSoda) \n\(UswitchWine)\n\(UswitchDirt)\n\(UswitchMold)\n\n\n"
        
        self.performSegue(withIdentifier: "movetoSubmi", sender: self)}



}


