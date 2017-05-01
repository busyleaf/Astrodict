//
//  ViewController.swift
//  Astrology Dictionary
//
//  Created by Robert Snipes on 4/17/17.
//  Copyright © 2017 snyps. All rights reserved..
//

import UIKit
///////////////////////////////////////////////////////////////////////////
//UITableViewDataSource, UITableViewDelegate protocol for how many and what
///////////////////////////////////////////////////////////////////////////
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var astro = ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagitarius", "Capricorn", "Aquarius", "Pisces"]
    
    @IBOutlet weak var astroDictTableView: UITableView!
    //how many things inside and what is inside tableview//

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        astroDictTableView.dataSource = self //how many things
        astroDictTableView.delegate = self   //what is inside
    }
    
    /////////////////////////////////////////////////
    //Conform to protocol with numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return astro.count
    }
    
    ////////////////////////////////////////
    //Conform to protocol with cellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()                //make a new cell
        
        //give tableview index as array index
        cell.textLabel?.text = astro[indexPath.row] //assign text to
        return cell                                 //cell's text label
    }

    /////////////////////////////////////////////////////////////////
    /////////////////Add View Controller to Xib//////////////////////
    //Do Segue by control click drag from yello circle of original //
    //view-top to new view controller and choose present modally   //
    //tap segue arrow, and under arrow, name 'moveSeque' indentifier//
    /////////////////////////////////////////////////////////////////


    
    
    /////////////////////////////////////////////
    //Runs didSelectRowAt when user selects a row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //deselectRow removes darkened line from selected row
        tableView.deselectRow(at: indexPath, animated: true)
        
        //performs segue with sign
        let sign = astro[indexPath.row]
        performSegue(withIdentifier: "moveSeque", sender: sign)
        //sender is sent to prepare func
    }
    
    /////////////////////////////////////////////////////////////////
    ///////////////////Add Navigation Controller ////////////////////
    //Select Yellow Circle of original View Controller             //
    //Select Editor, Embed In, Navigation Controller               //
    //tap segue arrow and change from present modally to show      //
    /////////////////////////////////////////////////////////////////
    
    /////////////////////////////////////////////////////////////////
    ///////////////////Eliminate Xtra whitespace ////////////////////
    //Select Yellow Circle of original View Controller             //
    //Under Carrot, uncheck 'adjust scroll view insets             //
    /////////////////////////////////////////////////////////////////
    
    //////////////////////////////////////////////////////////
    //Runs prepare(for segue: last just before a segue happens
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Get access to next view controller to move sender forward
        //Not just as any view controller but as DefinitionViewController
        let defVC = segue.destination as! DefinitionViewController
        
        //defVC.sign is variable from DefinitionViewController
        //it's being set to what's in the constant from this file
        defVC.sign = sender as! String
        
    }
    
    
    /////////////////////////////////////////////////////////////////
    ///////////////////Add Code File for New View////////////////////
    //Go to File, New, File, iOS, Cocoa Touch Class                //
    //Set subclass to UIViewController, and give class a name      //
    //Select Yellow Circle of New View Controller                  //
    //Click on Newspaper, under class type name of new class file  //
    /////////////////////////////////////////////////////////////////
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

