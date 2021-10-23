# Jupyter Notebook
> Please put Cornell-1000-nltk.ipynb and Twitter-5000-nltk.ipynb into the folder of Jupyter Notebook first. \
> If you use Minikube to install Kubeflow, the folder of Jupyter Notebook will usually be in：
```Bash
/tmp/hostpath-provisioner/kubeflow-user-example-com/workspace-<your Jupyter name>
```

## Pipeline
> Cornell-1000.zip and twitter-5000.zip are compressed files generated after executing Cornell-1000-nltk.ipynb and Twitter-5000-nltk.ipynb. \
> The content of the compressed file is the yaml file of the pipeline.

<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/pipeline.png" alt="pipeline"/><br/>

## Custom data
> Twitter-5000-nltk and Cornell-1000-nltk use similar code, and the difference is in downloading and reading data. \
> If you want to use other data, you only need to classify the data and save it in str format into pos_tweets and neg_tweets.

<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/data%20list.png" alt="data list"/><br/>

# Port Forward

### Step 1：Find the pod name of Http port
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/nltk.jpg" alt="nltk pod"/><br/>

### Step 2：Port-forward
```Bash
kubectl port-forward -n kubeflow-user-example-com <pod name> 3000:5000
```
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/port%20forward.png" alt="nltk pod port forward"/><br/>

### Step 3：Input in the browser
```Bash
http://localhost:3000/
```
or
```Bash
127.0.0.1:3000
```
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/NLP.png" alt="NLP"/><br/>

### Step 4：Predict
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/nice%20to%20meet%20you.png" alt="nice to meet you"/><br/>

# Accuracy
You can confirm the accuracy of the NLP individually, \
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/twitter-5000%20accuracy.png" alt="twitter"/>
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/cornell-1000%20accuracy.png" alt="cornell"/><br/>
or you can use a comparison run for comparison. \
<img src="https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/4.%20Image/compare%20runs.png" alt="compare"/><br/>

# Relevant part

* [About Version](https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/README.md)
* [About Install](https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/1.%20Install/Install.md)
* [About Docker](https://github.com/WEICHINLIN/Kubeflow---Natural-Language-Processing/blob/main/2.%20Docker/Docker.md)

