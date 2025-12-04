import rclpy
from rclpy.node import Node
from std_msgs.msg import Int16

n = 0  # カウント用

class MinimalPublisher(Node):
    def __init__(self):
        super().__init__('talker')
        self.publisher_ = self.create_publisher(Int16, 'countup', 10)
        self.timer = self.create_timer(0.5, self.timer_callback)

    def timer_callback(self):
        global n
        msg = Int16()
        msg.data = n
        self.publisher_.publish(msg)
        self.get_logger().info(f'Publishing: {msg.data}')
        n += 1

def main(args=None):
    rclpy.init(args=args)
    node = MinimalPublisher()
    rclpy.spin(node)
    node.destroy_node()
    rclpy.shutdown()

# __name__ == '__main__' は無くても entry_points 経由で呼ばれる

