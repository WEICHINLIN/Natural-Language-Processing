# Clean Kubeflow v1.2 (Minikube)

kubeflow v1.2 cannot be directly upgraded to kubeflow v1.3, you need to delete kubeflow v1.2 and install kubeflow v1.3. \
<font color=red>Don't forget to back up your files.</font>

### Step 1：Delete minikube environment
```Bash
minikube stop
minikube delete --purge
```
### Step 2：Delete docker image
```Bash
docker system prune -a
```
### Step 3：Delete instruction packet
```Bash
cd /usr/local/bin/
sudo rm –rf *
```
### Step 3：Delete instruction packet
```Bash
cd /usr/local/bin/
sudo rm –rf *
```
### Step 4：Enable boot cleanup
```Bash
cd /usr/local/bin/
sudo rm –rf *
```

# Install

### Step 1：Open the terminal
You must make sure you can find the following files when typing ls -l on the terminal. \
```Bash
ls -l
```
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/ls%20-l%20no.png" alt="ls -l no"/><br/>
Then you can proceed to the next step.

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
If successful, the file name will turn green. \
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/ls%20-l%20yes.png" alt="ls -l yes"/><br/>
Then you can proceed to the next step.

### Step 3：Execution
```Bash
sudo ./docker.sh
```
reboot VM or computer. \
Then confirm the docker version. \
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/docker%20version.png" alt="docker version"/><br/>
If you can see Clinet and Server versions, it means success.
```Bash
sudo ./minikube.sh
```
```Bash
sudo ./kubeflow.v13.sh
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
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/login.png" alt="ogin"/><br/>
* Email Address：user@example.com
* Password：12341234

> There may be several pods that are not running, as long as you can login and use it normally, don't worry about it. \
> If Step 3：Execution cannot be executed normally, you can open the file and execute it line by line.
