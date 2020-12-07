//
//  ContentView.swift
//  ex2
//
//  Created by yuchengtseng on 2020/12/8.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /* vstack 有做好對齊力但 Hstack 卻沒有,加到最高度再限縮(fixedSize)*/
        HStack{
            VStack(alignment:.trailing){
                Text("UserName").border(Color.red)
                Text("Email").border(Color.red)
                Text("Phone").border(Color.red)
             }.font(Font.system(size: 100,weight: .bold))
            
            VStack(alignment:.leading){    //maxHeight 最大高 度即是容器的高度也就是hstack的高度了,平均佔1/3高(靠左中)
                Text("Jack").frame(maxHeight:.infinity).border(Color.red);               Text("jack@gmail.com").frame(maxHeight:.infinity).border(Color.red);          Text("4001234567").frame(maxHeight:.infinity).border(Color.red);
            }.font(Font.system(size: 25))
        }.fixedSize()           //就會平均分配高度(固定hstack為 高度去分配的
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
