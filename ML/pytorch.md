**Pytorch Version: 1.21.1**
# Tensors
### Create a random tensor
```
# Create a random tensor of shape (1,5)
random_tensor1 = torch.randn((1, 5))
## Shape - (1,5)

# Create a random tensor with same shape as random_tensor1
random_tensor2 = torch.randn_like(random_tensor1)
## Shape - (1,5)
``` 
### Basic operations
#### Sum
``` 
tensor1 = torch.rand((3,5))
# Sum of all elements
torch.sum(t)
## Output- tensor(7.5457)

# Sum of all elements and reduce over the dimension 1
torch.sum(t, dim=1) # dim could be a list ex dim = [0,1]
## Output- tensor([2.1360, 2.7987, 2.6110])
``` 

#### Matrix Multiplication
``` 
# Vector x Vector- If both tensors are 1-dimensional, the dot product (scalar) is returned.
tensor1 = torch.randn(3)
tensor2 = torch.randn(3)
torch.matmul(tensor1, tensor2).size()
## Output- torch.Size([])

# Matrix x Vector- One dimension is prepended to the vector and then removed in the output
tensor1 = torch.randn(3, 4)
tensor2 = torch.randn(4)
torch.matmul(tensor1, tensor2).size()
## Output- torch.Size([3])

# batched matrix x broadcasted vector
tensor1 = torch.randn(10, 3, 4)
tensor2 = torch.randn(4)
torch.matmul(tensor1, tensor2).size()
## Output- torch.Size([10, 3]

# batched matrix x batched matrix
tensor1 = torch.randn(10, 3, 4)
tensor2 = torch.randn(10, 4, 5)
torch.matmul(tensor1, tensor2).size()
## Output- torch.Size([10, 3, 5])

#  The non-matrix (i.e. batch) dimensions are broadcasted. In the following case, the second dimenion of tensor1 could only be 1 or 10
tensor1 = torch.randn(9, 1, 3, 4)
tensor2 = torch.randn(10, 4, 5)
torch.matmul(tensor1, tensor2).size()
## Output- torch.Size([9, 10, 3, 5])
``` 

# Deep Learning

## Loss functions
### Classification
```
import torch
from torch import nn

# Consider the raw output of last layer usually called as logits or scores
last_linear_layer = nn.Linear((Dim,C))
log_softmax_layer = nn.LogSoftmax(dim=1) # dim- Computation dimension usually the class dimension `C`
logits = last_linear_layer(second_last_layer_output) # Let's call it x
log_softmax = log_softmax_layer(logits) # It will be log(probabilities) i.e log(softmax(x)) 

# Losses

# NLLLoss
# When using log_softmax as output
criterion2 = nn.NLLLoss()
loss2 = criterion2(log_softmax)
# To get the probablity 
probabilities = torch.exp(log_softmax)

# CrossEntropyLoss
# When using logits as output
criterion1 = nn.CrossEntropyLoss() # Cross entropy loss which is internally a combination of LogSoftmax and NLLLoss.
loss1 = criterion1(logits)



```

# Others
Set random seed
```
torch.manual_seed(7)
```