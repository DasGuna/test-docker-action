# test docker action

This action prints the inputted ROS distro

## Inputs

## `ros-distro`

**Optional** The ROS distro to use. Default `"noetic"`.

## Outputs

## `time`

The time this action succeeded.

## Example usage

uses: actions/test-docker-action@v1
with:
  ros-distro: 'noetic'