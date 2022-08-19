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

# Others
Set random seed
```
torch.manual_seed(7)
```