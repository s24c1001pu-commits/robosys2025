import launch
import launch_ros.actions


def generate_launch_description():

    talker = launch_ros.actions.Node(
        package='mypkg',      # パッケージ名
        executable='talker',  # setup.py で登録した名前
        output='screen'
    )

    listener = launch_ros.actions.Node(
        package='mypkg',
        executable='listener',
        output='screen'
    )

    return launch.LaunchDescription([
        talker,
        listener
    ])

