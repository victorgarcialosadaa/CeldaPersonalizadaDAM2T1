//
//  ViewController.swift
//  CeldaPersonalizadaDAM2T1
//
//  Created by DAM on 16/01/2019.
//  Copyright © 2019 DAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var listaRopa:[Ropa] = [
        Ropa(nameCloth: "Chaqueta", categoryCloth: "Ropa y complementos", imgProduct: UIImage(named: "p2")!),
        Ropa(nameCloth: "Sudadera", categoryCloth: "Running", imgProduct: UIImage(named: "p3")!),
    
        Ropa(nameCloth: "Sudadera", categoryCloth: "Moda", imgProduct: UIImage(named: "p1")!),
        Ropa(nameCloth: "Chaqueta", categoryCloth: "Ropa y complementos", imgProduct: UIImage(named: "p2")!),
        Ropa(nameCloth: "Sudadera", categoryCloth: "Running", imgProduct: UIImage(named: "p3")!),
        
        Ropa(nameCloth: "Sudadera", categoryCloth: "Moda", imgProduct: UIImage(named: "p1")!),Ropa(nameCloth: "Chaqueta", categoryCloth: "Ropa y complementos", imgProduct: UIImage(named: "p2")!),
        Ropa(nameCloth: "Sudadera", categoryCloth: "Running", imgProduct: UIImage(named: "p3")!),
        
        Ropa(nameCloth: "Sudadera", categoryCloth: "Moda", imgProduct: UIImage(named: "p1")!)
    ]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaRopa.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCellCustom
        
        myCell.nameCloth.text = listaRopa[indexPath.row].nameCloth
        myCell.imgProduct.image = listaRopa[indexPath.row].imgProduct
        myCell.categoryCloth.text = listaRopa[indexPath.row].categoryCloth
       
        /*if listaRopa[indexPath.row].isLiked {
            myCell.isLiked.isHidden = false
        }else{
            myCell.isLiked.isHidden = true
        }*/
        
        myCell.isLiked.isHidden = listaRopa[indexPath.row].isLiked ? false : true
        
        
        return myCell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Todos los productos"
    }
    
    /*Defino que pasa al hacer un click en la row*/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "detailProduct") as! ViewControllerProduct
        
        vc.nameCloth = listaRopa[indexPath.row].nameCloth
        vc.categoryCloth = listaRopa[indexPath.row].categoryCloth
        vc.imgCloth = listaRopa[indexPath.row].imgProduct
        
        
        //Presentar el view controller
        self.navigationController?.pushViewController(vc, animated: true)
        
        
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let isLiked = likedCategory(indexPath:indexPath)
        
        
        
        //Adjuntamos todas las opciones que necesitemos en modo de array
        return UISwipeActionsConfiguration(actions: [isLiked])
    }
    
    
    func likedCategory(indexPath:IndexPath) -> UIContextualAction{
        
        //defino la acción que voy a devolver en el método para el array de acciones
        let action = UIContextualAction(style: .normal, title: "", handler: {
            (action, view, completionHandler) in
         
            //FUNCIONALIDAD AQUI DENTRO
            
            //Utilizando el view le cambies el background
            
            
            //SIEMPRE NIEGO LO ANTERIOR
            self.listaRopa[indexPath.row].isLiked = !self.listaRopa[indexPath.row].isLiked
            //RECARGAMOS LA INFO DE LA ROW
            self.tableView.reloadRows(at: [indexPath], with: .none)
            /*RECARGAR LA INFORMACION SOLO SI CAMBIA*/
            //self.tableView.reloadData()
            
            completionHandler(true)
            
        })

        //ESTABLEZCO EL TITULO PARA LOS DOS CASOS
        //action.title = listaRopa[indexPath.row].isLiked ? "UnHappy!" : "Happy"
        action.image = UIImage(named: "heart")
        action.backgroundColor =  listaRopa[indexPath.row].isLiked ? UIColor.purple : UIColor.gray
        
        //finalmente una vez configurada la acción la retorno
        return action
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }


}

