import UIKit

/// --------------------- UITableView extension ---------------------
extension UITableView {
    ///注册cell
    func ym_registerCell<T: UITableViewCell>(cell: T.Type) where T: RegisterCellOrNib {
        if let xib = T.xib {
            // T 遵守了 RegisterCellOrNib 协议，所以通过 T 就能取出 identifier 这个属性
            register(xib, forCellReuseIdentifier: T.identifier)
        } else {
            register(cell, forCellReuseIdentifier: T.identifier)
        }
    }
    
    func ym_dequeueReusableCell<T: UITableViewCell>(indexPath: IndexPath) -> T where T: RegisterCellOrNib {
        return dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as! T
    }
    ///注册HeaderFooter
    func ym_registerHeaderFooter<T: UITableViewHeaderFooterView>(headerFooter: T.Type) where T: RegisterCellOrNib {
        if let xib = T.xib {
            register(xib, forHeaderFooterViewReuseIdentifier: T.identifier)
        }else{
            register(headerFooter, forHeaderFooterViewReuseIdentifier: T.identifier)
        }
    }
    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>() -> T where T: RegisterCellOrNib {
        return dequeueReusableHeaderFooterView(withIdentifier: T.identifier) as! T
    }
}

import UIKit

/// --------------------- UICollectionView extension ---------------------
extension UICollectionView {
    /// 注册 cell
    func ym_registerCell<T: UICollectionViewCell>(cell: T.Type) where T: RegisterCellOrNib {
        if let xib = T.xib {
            // T 遵守了 RegisterCellOrNib 协议，所以通过 T 就能取出 identifier 这个属性
            register(xib, forCellWithReuseIdentifier: T.identifier)
        } else {
            register(cell, forCellWithReuseIdentifier: T.identifier)
        }
    }
    
    /// 获取可重用的 cell
    func ym_dequeueReusableCell<T: UICollectionViewCell>(indexPath: IndexPath) -> T where T: RegisterCellOrNib {
        return dequeueReusableCell(withReuseIdentifier: T.identifier, for: indexPath) as! T
    }
    
    /// 注册头部
    func ym_registerSupplementaryHeaderView<T: UICollectionReusableView>(reusableView: T.Type) where T: RegisterCellOrNib {
        if let xib = T.xib {
            // T 遵守了 RegisterCellOrNib 协议，所以通过 T 就能取出 identifier 这个属性
            register(xib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.identifier)
        } else {
            register(reusableView, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.identifier)
        }
    }
    
    /// 获取可重用的头部
    func ym_dequeueReusableSupplementaryHeaderView<T: UICollectionReusableView>(indexPath: IndexPath) -> T where T: RegisterCellOrNib {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.identifier, for: indexPath) as! T
    }
    ///注册尾部
    func ym_registerSupplementaryFooterView<T:UICollectionReusableView>(resuableView: T.Type) where T: RegisterCellOrNib {
        // T 遵守了 RegisterCellOrNib 协议，所以通过 T 就能取出 identifier 这个属性
        if let nib = T.xib {
            register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.identifier)
        }else{
            register(resuableView, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.identifier)
        }
    }
    ///获取可重用尾部
    func ym_dequeueReusableSupplementaryFooterView<T: UICollectionReusableView>(indexPath: IndexPath) -> T where T: RegisterCellOrNib {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.identifier, for: indexPath) as! T
    }
}



/////////////其使用方法
// 注册头尾视图
        tableView.ym_registerHeaderFooter(headerFooter: HomeVipHeaderView.self)
        tableView.ym_registerHeaderFooter(headerFooter: HomeVipFooterView.self)
        // 注册分区cell
        tableView.ym_registerCell(cell: HomeVIPCellID.self)
        
        
        
        
