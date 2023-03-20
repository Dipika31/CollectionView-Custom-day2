//
//  ViewController.swift
//  CollectionView Custom
//
//  Created by Choudhary Dipika on 14/02/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var image = [UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9")]
    var numbers = [1,2,3,4,5,6,7,8]
    var select = -1
    var arr = Array<Int>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MyCollectionViewCell
        cell.image.image = image[indexPath.row]
        cell.numberLabel.text = "\(numbers[indexPath.row])"
        
        for i in 0..<arr.count
        {
            if arr[i] == indexPath.row
            {
               // print(arr[i])
                cell.radioButton.image = UIImage(systemName: "circle.fill")
                 if i > 0
                {
                    for j in 0...i
                    {
                        cell.radioButton.image = UIImage(systemName: "circle.fill")
                    }
                }
            }
            //
//            else if i == 1
//            {
//                if arr[0] == indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }
//            else if i == 2
//            {
//                if (arr[0] != 0) && arr[1]==indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }
//            else if i == 3
//            {
//                if (arr[0] != 0) && arr[2]==indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }
//            else if i == 4
//            {
//                if (arr[0] != 0) && arr[3]==indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }else if i == 5
//            {
//                if (arr[0] != 0) && arr[4]==indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }else if i == 6
//            {
//                if (arr[0] != 0) && arr[5]==indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }else if i == 7
//            {
//                if (arr[0] != 0) && arr[6]==indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }else if i == 8
//            {
//                if (arr[0] != 0) && arr[7]==indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }else if i == 9
//            {
//                if (arr[0] != 0) && arr[8]==indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }else if i == 10
//            {
//                if (arr[0] != 0) && arr[9]==indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }
//            else if i == 11
//            {
//                if (arr[0] != 0) && arr[10]==indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }else if i == 12
//            {
//                if (arr[0] != 0) && arr[11]==indexPath.row
//                {
//                    cell.radioButton.image = UIImage(systemName:"circle.fill")
//                }
//            }
            else
            {
                cell.radioButton.image = UIImage(systemName: "circle")
            }
       }
       
        cell.layer.borderWidth = 2
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 173, height: 242)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        select = indexPath.row
        arr.append(select)
        
        collectionView.reloadData()
        print(arr)
    }
}

