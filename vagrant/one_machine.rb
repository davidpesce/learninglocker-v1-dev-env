
#box = "chef/centos-7.0"
box = "bento/centos-7.3"

MACHINES = [
  {
    "hostname"=> "learninglocker",
    "ip"=> "192.168.35.2",
    "box"=> box,
    "memory"=> 1024,
    "cpus"=> 1,
    "ports"=> [ [80, 8082], ],
    "ansible_groups" => ["learninglocker", "database"]
  },
]


MONGO_HOST = "192.168.35.2"