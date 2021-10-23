# Jupyter Notebook

> Please put Cornell-1000-nltk.ipynb and Twitter-5000-nltk.ipynb into the folder of Jupyter Notebook first. \
> If you use Minikube to install Kubeflow, the folder of Jupyter Notebook will usually be in：
```Bash
/tmp/hostpath-provisioner/kubeflow-user-example-com/<your Jupyter name>
```
## Pipeline
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/pipeline.png" alt="pipeline"/><br/>
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
