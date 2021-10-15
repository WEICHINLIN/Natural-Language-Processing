# Version

* Docker：20.10.7
* Kubectl：v1.20.1
* Minikube：v1.20.0
* Kubeflow：v1.3

> If you install kubeflow v1.3, you can skip the install.

# Install

### Step 1：Change the < user > to your own
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
### Step 2：Give execution permission
```Bash
sudo chmod +x docker.sh
sudo chmod +x minikube.sh
sudo chmod +x kubeflow.sh
```
or
```Bash
sudo chmod +x *
```
### Step 3：Execution
```Bash
sudo docker.sh
```
reboot VM or computer.
```Bash
sudo minikube.sh
```
```Bash
sudo kubeflow.sh
```
### Step 4：Port-forward
After all the pods are running
```Bash
kubectl port-forward -n istio-system svc/istio-ingressgateway 8080:80
```
Input in the browser
```Bash
http://localhost:8080/
```
or
```Bash
127.0.0.1:8080
```
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/image/login.png" width="350" height="200" alt="Login Picture"/><br/>
* Email Address：user@example.com
* Password：12341234

> There may be several pods that are not running, as long as you can login and use it normally, don't worry about it. \
> If Step 3：Execution cannot be executed normally, you can open the file and execute it line by line.

# Docker

> I have provided a public docker image. < m10913018/nltk env:1.0.0 > \
> There are only python packages and html files inside, no code related to natural language processing.

![image](https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/image/http.png)

> You can customize the web page and remake the docker image.

# Jupyter Notebook - Natural Language Processing
> Please put the files in Jupyter into the folder of Jupyter Notebook first. \
> If you use Minikube to install Kubeflow, the folder of Jupyter Notebook will usually be in：
```Bash
/tmp/hostpath-provisioner/kubeflow-user-example-com/<your Jupyter name>
```

<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/image/nltk.png" width="700" height="400" alt="NLTK Pipeline Picture"/><br/>
