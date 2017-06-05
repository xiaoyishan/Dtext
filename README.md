# Dtext
适用于当nil和null的出现“< null >” “(null)”等显示 这2个比较常见 当然也可以继续拓展更多的过滤 具体根据项目修改
特别适合在使用多个拼接字符串上 


如果需要比较严谨的定义,同时又过滤nil和null  可以查看此类 https://github.com/xiaoyishan/DKit

可以使 build + run 和源数据 在model格式化后保持一致  以model里的类型为最终类型 同时移除异常类型 但只支持实体类
作为拓展类使用 可以搭配其它第三方model使用
