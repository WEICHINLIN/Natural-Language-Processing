# Dockerfile

> I have provided a public docker image. < m10913018/nltk env:1.0.0 > \
> There are only python packages and html files inside, no code related to natural language processing.

<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/image/http.png" width="300" height="200" alt="Http Picture"/><br/>

> You can customize the web page and remake the docker image.

# Jupyter Notebook - Natural Language Processing

> Please put the files in Jupyter into the folder of Jupyter Notebook first. \
> If you use Minikube to install Kubeflow, the folder of Jupyter Notebook will usually be in：
```Bash
/tmp/hostpath-provisioner/kubeflow-user-example-com/<your Jupyter name>
```
## Flow Chart
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/image/flow%20chart.png" width="1200" height="200" alt="Flow Chart"/><br/>
> The files in the ZIP are the files generated after the code is executed.

## Custom data
> Twitter-5000-nltk and Cornell-1000-nltk use similar code, and the difference is in downloading and reading data. \
>If you want to use other data, you only need to classify the data and save it in str format into pos_tweets and neg_tweets. \

<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/image/data%20list.png" width="1200" height="200" alt="Flow Chart"/><br/>

# Port Forward

### Step 1：Find the pod name of Http port
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/image/nltk.jpg" width="1000" height="500" alt="Pipeline"/><br/>
### Step 2：Port-forward
```Bash
kubectl port-forward -n kubeflow-user-example-com <pod name> 3000:5000
```
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/image/port%20forward.png" width="750" height="300" alt="Pipeline"/><br/>
### Step 3：Input in the browser
```Bash
http://localhost:3000/
```
or
```Bash
127.0.0.1:3000
```
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/image/nice%20to%20meet%20you.png" width="450" height="200" alt="Http Picture"/><br/>
### Step 4：Predict
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/image/predict.png" width="800" height="300" alt="Http Picture"/><br/>
