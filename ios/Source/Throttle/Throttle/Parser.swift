//
//  Throttle
//
//  Copyright (c) 2020-Present Warpdrives Team - https://github.com/warpdrives
//
//  The software is available under the Apache 2.0 license. See the LICENSE file
//  for more info.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//  Created by ShevaKuilin on 2020/6/8.
//  Copyright © 2020 Warpdrives Team. All rights reserved.
//
  

import UIKit

/// DSL 解析器
public struct Parser {
    
}

/// DSL定义
struct DSL {
    var layoutStyle: LayoutStyle?
    var viewStyle: ViewStyle?
    var viewAction: ViewAction?
    var condition: Condition?
}

/// 布局方式
struct LayoutStyle {
    enum style {
        case frame
        case flexbox
    }
}

/// 视图属性
struct ViewStyle {
    var type: AnyClass?
    var backgroundColor: UIColor = .white
    var alpha: CGFloat = 1.0
    var cornerRadius: CGFloat = 0.0
    var borderColor: UIColor?
    var borderWidth: CGFloat = 0.0
    var frame: CGRect = .zero
}

/// 交互属性
struct ViewAction {
    var action: Selector?
}

/// 视图状态条件
struct Condition {
    var parentView: AnyObject?
    var subView: AnyObject?
}
