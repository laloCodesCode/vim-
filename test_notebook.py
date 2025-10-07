# %% [markdown]
# # Test Notebook
# This is a test notebook to verify Jupyter integration with Neovim

# %%
import numpy as np
import matplotlib.pyplot as plt

# %%
# Create some sample data
x = np.linspace(0, 10, 100)
y = np.sin(x)

print("Generated data:")
print(f"x shape: {x.shape}")
print(f"y shape: {y.shape}")

# %%
# Create a simple plot
plt.figure(figsize=(10, 6))
plt.plot(x, y, 'b-', label='sin(x)')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Simple Sine Wave')
plt.legend()
plt.grid(True)
plt.show()

# %%
# Test some calculations
result = np.mean(y)
print(f"Mean of y: {result}")
print(f"Min of y: {np.min(y)}")
print(f"Max of y: {np.max(y)}")