# target的名字一般与你的项目名字相同
target 'ReactNativeDemo' do

  # 'node_modules'目录一般位于根目录中
  # 但是如果你的结构不同，那你就要根据实际路径修改下面的`:path`
  pod 'React', :path => '/Users/Flonger/GitHub/ReactNativeDemo/node_modules/react-native', :subspecs => [
    'Core',
    'RCTText',
    'RCTNetwork',
    'RCTWebSocket',# 这个模块是用于调试功能的
    'RCTImage',
    # 在这里继续添加你所需要的模块
  ]

end
