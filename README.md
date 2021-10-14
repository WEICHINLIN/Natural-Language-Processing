# Kubeflow---Natural-Language-Processing
## Version
* Docker：20.10.7
* Kubectl：v1.20.1
* Minikube：v1.20.0
* Kubeflow：v1.3

If you install kubeflow v1.3, you can skip the install.

## Install
### Change the < user > to your own
* docker.sh
```Bash
usermod -aG docker <user>
```
* kubeflow.v13.sh
```Bash
KUBEFLOW_ROOT=/home/<user>/kubeflow
KF_NAME=v1.3
KF_DIR=${KUBEFLOW_ROOT}/${KF_NAME}
```
  
### Step 1：Give execution permission
```Bash
sudo chmod +x docker.sh
sudo chmod +x minikube.sh
sudo chmod +x kubeflow.sh
```
or
```Bash
sudo chmod +x *
```
### Step 2：

## Docker
