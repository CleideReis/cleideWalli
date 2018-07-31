//
//  EstatisticaObraViewController.swift
//  appWalli
//
//  Created by student on 30/07/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

//class EstatisticaObraViewController: UIViewController {
class EstatisticaObraViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var diaCorridos: String = ""
    var diasRestante: String = ""
    var previsaoEntrega: String = ""
    var observacao: String = ""
    
    

    @IBOutlet var imageView: UIImageView!
    
    @IBAction func btnFoto(_ sender: Any) {
        
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
    }
   
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        picker.dismiss(animated: true)
        
        guard let image = info[UIImagePickerControllerEditedImage] as? UIImage else {
            print("No image found")
            return
        }
        
        self.imageView.image = image
        // print out the image size as a test
        print(image.size)
    }
    
    
    @IBOutlet weak var txtDias: UITextField!
    
    
    @IBOutlet weak var txtDiasRest: UITextField!
    
    @IBOutlet weak var txtPrevisao: UITextField!
    
    @IBOutlet weak var txtObservacao: UITextView!
    
    @IBAction func btnCadastrar(_ sender: Any) {
        diaCorridos = txtDias.text!
        diasRestante = txtDiasRest.text!
        previsaoEntrega = txtPrevisao.text!
        observacao = txtObservacao.text!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
