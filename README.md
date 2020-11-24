# pizzaspirit
- [ ] add timestamp
- [ ] clean:  into one decorator or function in django model - just for less code
- [ ] setup Postgres
    - `Docker`
- [ ] split settings

```python
created_at = models.DateTimeField(auto_now_add=True)
updated_at = models.DateTimeField(auto_now=True)

def get_timestamp(self):
    """Return a string of created_at and updated_at."""
    return f"Created: {self.created_at}, Updated: {self.updated_at}"
```
## Model
### Pizza
### PizzaOrder
### Order

# Order state
## cooking
changed by pizzaspirit
## moving
changed by pizzaspirit
## delivered
changed by pizzaspirit
## recieved
changed by customer
