//
//  ViewController.swift
//  confession
//
//  Created by 方仕賢 on 2021/12/20.
//

import UIKit
import AVFAudio

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
        
    @IBOutlet weak var earthSlider: UISlider!
    
    @IBOutlet weak var hotAirBalloonImageView: UIImageView!
    
    @IBOutlet weak var skyImageView: UIImageView!
    
    @IBOutlet weak var sunImageView: UIImageView!
   
    @IBOutlet weak var moonImageView: UIImageView!
    
    //countries
    @IBOutlet weak var libertyOfStatueImageView: UIImageView!
    @IBOutlet weak var earthImageView: UIImageView!
    @IBOutlet weak var tahamaMahalImageView: UIImageView!
    @IBOutlet weak var twinTowersImageView: UIImageView!
    @IBOutlet weak var moaiImgaeView: UIImageView!
    @IBOutlet weak var jesusImageView: UIImageView!
    @IBOutlet weak var dubaiImageView: UIImageView!
    @IBOutlet weak var leaningTowerImageView: UIImageView!
    @IBOutlet weak var pyramidImageView: UIImageView!
    @IBOutlet weak var toriiImageView: UIImageView!
    @IBOutlet weak var eiffelTowerImageView: UIImageView!
    @IBOutlet weak var taipeiImageView: UIImageView!
    @IBOutlet weak var bigBenImageView: UIImageView!
    
    //people
    
    @IBOutlet weak var american: UIImageView!
    @IBOutlet weak var japanese: UIImageView!
    
    @IBOutlet weak var singaporean: UIImageView!
    @IBOutlet weak var arab: UIImageView!
    
    @IBOutlet weak var french: UIImageView!
    @IBOutlet weak var italian: UIImageView!
    @IBOutlet weak var indian: UIImageView!
    @IBOutlet weak var egyptian: UIImageView!
    @IBOutlet weak var chilean: UIImageView!
    @IBOutlet weak var brazilian: UIImageView!
    @IBOutlet weak var british: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
//To make the object rotate and also moving around unclockwisly
    
    func movingUnclockwisly(degrees: CGFloat, view: UIImageView) {
        let path = UIBezierPath()
        let degree = 0 - CGFloat.pi / 180
        let endAngle = degree * (degrees + 90)
        
        path.addArc(withCenter: earthImageView.center, radius: earthImageView.bounds.width / 2 + 100, startAngle: 0, endAngle: endAngle, clockwise: true)
        
        view.center = path.currentPoint
    }
 
// To make the object rotate and also moving around clockwisly
    
    func movingClockwilsy(imageView: UIImageView, value: Float, radius: CGFloat){
        imageView.transform = CGAffineTransform.init(rotationAngle: (CGFloat.pi / 180) * CGFloat(value)).translatedBy(x: 0, y: radius)
        
    }
    
//To make the object rotate and moving around clockwisly, also transform the size when moving
    
    func changeSizeWhenMoving(imageView: UIImageView, value: Float, radius: CGFloat){
        imageView.transform = CGAffineTransform.init(rotationAngle: (CGFloat.pi / 180) * CGFloat(value)).translatedBy(x: 0, y: radius).scaledBy(x: CGFloat(value) * 0.003, y: CGFloat(value) * 0.003)
        
    }
  
// To make the object rotate on the static spot
    
    func rotatingImage(imageView: UIImageView, value: Float){
        imageView.transform = CGAffineTransform.init(rotationAngle: (CGFloat.pi / 180) * CGFloat(value))
    }
    
//When draging the slider, all the moving objects will move depending on the value of the slider. The label nearby also display the number of the value.
    @IBAction func sliderChange(_ sender: UISlider) {
        
        var sliderValue = earthSlider.value
        
        sliderValue.round()
        
        label.text = "\(Int(sliderValue))"
        
        movingClockwilsy(imageView: taipeiImageView, value: sliderValue, radius: -460)
        
        movingClockwilsy(imageView: toriiImageView, value: sliderValue+30, radius: -460)
        
        movingClockwilsy(imageView: moaiImgaeView, value: sliderValue+60, radius: -460)
        
        movingClockwilsy(imageView: jesusImageView, value: sliderValue+90, radius: -460)
        
        movingClockwilsy(imageView: libertyOfStatueImageView, value: sliderValue+120, radius: -460)
        
        movingClockwilsy(imageView: bigBenImageView, value: sliderValue+150, radius: -460)
        
        movingClockwilsy(imageView: eiffelTowerImageView, value: sliderValue+180, radius: -460)
        
        movingClockwilsy(imageView: leaningTowerImageView, value: sliderValue+210, radius: -460)
        
        movingClockwilsy(imageView: pyramidImageView, value: sliderValue+240, radius: -460)
        
        movingClockwilsy(imageView: dubaiImageView, value: sliderValue+270, radius: -460)
        
        movingClockwilsy(imageView: tahamaMahalImageView, value: sliderValue+300, radius: -460)
        
        movingClockwilsy(imageView: twinTowersImageView, value: sliderValue+330, radius: -460)
        
        movingUnclockwisly(degrees: CGFloat(sliderValue+180), view: moonImageView)
        
        movingUnclockwisly(degrees: CGFloat(sliderValue), view: sunImageView)

        
        rotatingImage(imageView: earthImageView, value: sliderValue)
        
        rotatingImage(imageView: skyImageView, value: Float(sliderValue))
        
        changeSizeWhenMoving(imageView: japanese, value: sliderValue+30, radius: -260)
        
        changeSizeWhenMoving(imageView: chilean, value: sliderValue+60, radius: -260)
        
        changeSizeWhenMoving(imageView: brazilian, value: sliderValue+90, radius: -260)
        
        changeSizeWhenMoving(imageView: american, value: sliderValue+120, radius: -260)
        
        changeSizeWhenMoving(imageView: british, value: sliderValue+150, radius: -260)
        
        changeSizeWhenMoving(imageView: french, value: sliderValue+180, radius: -260)
        
        changeSizeWhenMoving(imageView: italian, value: sliderValue+210, radius: -260)
        
        changeSizeWhenMoving(imageView: egyptian, value: sliderValue+240, radius: -260)
        
        changeSizeWhenMoving(imageView: arab, value: sliderValue+270, radius: -260)
        
        changeSizeWhenMoving(imageView: indian, value: sliderValue+300, radius: -260)
        
        changeSizeWhenMoving(imageView: singaporean, value: sliderValue+330, radius: -260)
        
    }
    
 // When pressing the nextStop button, all the countries and the earth will move clockwilsly, and the sun and the moon will move unclockwilsly
    
    @IBAction func nextStop(_ sender: Any) {
        earthSlider.value += 30
        
        let next = earthSlider.value
        
        label.text = "\(Int(next))"
        
        movingClockwilsy(imageView: taipeiImageView, value: Float(next), radius: -460)
        
        movingClockwilsy(imageView: toriiImageView, value: Float(next+30), radius: -460)
       
        movingClockwilsy(imageView: moaiImgaeView, value: Float(next+60), radius: -460)
        
        movingClockwilsy(imageView: jesusImageView, value: Float(next+90), radius: -460)
        
        movingClockwilsy(imageView: libertyOfStatueImageView   , value: Float(next+120), radius: -460)
        
        movingClockwilsy(imageView: bigBenImageView, value: Float(next+150), radius: -460)
        
        movingClockwilsy(imageView: eiffelTowerImageView, value: Float(next+180), radius: -460)
        
        movingClockwilsy(imageView: leaningTowerImageView, value: Float(next+210), radius: -460)
        
        movingClockwilsy(imageView: pyramidImageView, value: Float(next+240), radius: -460)
        
        movingClockwilsy(imageView: dubaiImageView, value: Float(next+270), radius: -460)
        
        movingClockwilsy(imageView: tahamaMahalImageView, value: Float(next+300), radius: -460)
        
        movingClockwilsy(imageView: twinTowersImageView, value: Float(next+330), radius: -460)
        
        movingUnclockwisly(degrees: CGFloat(next+180), view: moonImageView)
        
        movingUnclockwisly(degrees: CGFloat(next), view: sunImageView)
        
        rotatingImage(imageView: earthImageView, value: Float(next))
        
        rotatingImage(imageView: skyImageView, value: Float(next))
        
        changeSizeWhenMoving(imageView: japanese, value: next+30, radius: -260)
        
        changeSizeWhenMoving(imageView: chilean, value: next+60, radius: -260)
        
        changeSizeWhenMoving(imageView: brazilian, value: next+90, radius: -260)
        
        changeSizeWhenMoving(imageView: american, value: next+120, radius: -260)
        
        changeSizeWhenMoving(imageView: british, value: next+150, radius: -260)
        
        changeSizeWhenMoving(imageView: french, value: next+180, radius: -260)
        
        changeSizeWhenMoving(imageView: italian, value: next+210, radius: -260)
        
        changeSizeWhenMoving(imageView: egyptian, value: next+240, radius: -260)
        
        changeSizeWhenMoving(imageView: arab, value: next+270, radius: -260)
        
        changeSizeWhenMoving(imageView: indian, value: next+300, radius: -260)
        
        changeSizeWhenMoving(imageView: singaporean, value: next+330, radius: -260)
       
    }

// When pressing the lastStop button, all the countries and the earth will move unclockwisly, and the sun and the moon move clockwisly.
    
    @IBAction func lastStop(_ sender: Any) {
        
        earthSlider.value -= 30
        
        let next = earthSlider.value
        
        label.text = "\(Int(next))"
        
        movingClockwilsy(imageView: taipeiImageView, value: Float(next), radius: -460)
        
        movingClockwilsy(imageView: toriiImageView, value: Float(next-330), radius: -460)
       
        movingClockwilsy(imageView: moaiImgaeView, value: Float(next-300), radius: -460)
        
        movingClockwilsy(imageView: jesusImageView, value: Float(next-270), radius: -460)
        
        movingClockwilsy(imageView: libertyOfStatueImageView   , value: Float(next-240), radius: -460)
        
        movingClockwilsy(imageView: bigBenImageView, value: Float(next-210), radius: -460)
        
        movingClockwilsy(imageView: eiffelTowerImageView, value: Float(next-180), radius: -460)
        
        movingClockwilsy(imageView: leaningTowerImageView, value: Float(next-150), radius: -460)
        
        movingClockwilsy(imageView: pyramidImageView, value: Float(next-120), radius: -460)
        
        movingClockwilsy(imageView: dubaiImageView, value: Float(next-90), radius: -460)
        
        movingClockwilsy(imageView: tahamaMahalImageView, value: Float(next-60), radius: -460)
        
        movingClockwilsy(imageView: twinTowersImageView, value: Float(next-30), radius: -460)
        
        movingUnclockwisly(degrees: CGFloat(next-180), view: moonImageView)
        
        movingUnclockwisly(degrees: CGFloat(next), view: sunImageView)
        
        rotatingImage(imageView: earthImageView, value: Float(next))
        
        rotatingImage(imageView: skyImageView, value: Float(next))
        
        changeSizeWhenMoving(imageView: japanese, value: Float(next-330+360), radius: -260)
        
        changeSizeWhenMoving(imageView: chilean, value: Float(next-300+360), radius: -260)
        
        changeSizeWhenMoving(imageView: brazilian, value: Float(next-270+360), radius: -260)
        
        changeSizeWhenMoving(imageView: american, value: Float(next-240+360), radius: -260)
        
        changeSizeWhenMoving(imageView: british, value: Float(next-210+360), radius: -260)
        
        changeSizeWhenMoving(imageView: french, value: Float(next-180+360), radius: -260)
        
        changeSizeWhenMoving(imageView: italian, value: Float(next-150+360), radius: -260)
        
        changeSizeWhenMoving(imageView: egyptian, value: Float(next-120+360), radius: -260)
        
        changeSizeWhenMoving(imageView: arab, value: Float(next-90+360), radius: -260)
        
        changeSizeWhenMoving(imageView: indian, value: Float(next-60+360), radius: -260)
        
        changeSizeWhenMoving(imageView: singaporean, value: Float(next-30+360), radius: -260)
    }
    
// When pressing the button, hearts will be emitted from the hot air balloon
        func emitHeart(){
            let heartEmitter = CAEmitterCell()
            heartEmitter.contents = UIImage(named: "heart")?.cgImage
            
            heartEmitter.redRange = 1
            heartEmitter.greenRange = 1
            heartEmitter.blueRange = 1
            heartEmitter.alphaRange = 1
            
            heartEmitter.birthRate = 5
            heartEmitter.lifetimeRange = 7
            heartEmitter.velocity = 1
            
            heartEmitter.scaleRange = 0.5
            
            heartEmitter.yAcceleration = 90
            heartEmitter.emissionRange = 30
            heartEmitter.spinRange = 5

            
            let heartEmitterLayer = CAEmitterLayer()
           
            heartEmitterLayer.emitterCells = [heartEmitter]
            heartEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: 350)
            view.layer.addSublayer(heartEmitterLayer)
           
    }

    @IBAction func spreadLove(_ sender: Any) {
        emitHeart()
    }
    
    
    
}


