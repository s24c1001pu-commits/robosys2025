import rclpy                   # ROS2 クライアントライブラリ
from rclpy.node import Node    # ノードクラス
from std_msgs.msg import Int16 # メッセージ型（整数）

rclpy.init()
node = Node("talker")          # ノード作成
pub = node.create_publisher(Int16, "countup", 10)  # publisher作成
n = 0  # カウント用

def cb():                      # コールバック関数
    global n
    msg = Int16()              # メッセージオブジェクト
    msg.data = n               # 数値をセット
    pub.publish(msg)           # 送信
    n += 1

def main():
    node.create_timer(0.5, cb) # 0.5秒ごとにcb()実行
    rclpy.spin(node)           # 無限ループ

if __name__ == "__main__":
    main()

