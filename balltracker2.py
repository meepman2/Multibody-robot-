import pyautogui, sys
import time
import matplotlib.pyplot as plt

fig = plt.figure()
ax = fig.add_subplot(111)
fig.show()
plt.axis([0, 1919, 1079, 0])
x, y = [], []
i = 0
print('Press Ctrl-C to quit.')
try:
    while True:
        a, b = pyautogui.position()
        x.append(a)
        y.append(b)

        ax.plot(x, y, 'bo')

        fig.canvas.draw()

        time.sleep(0.001)

        data = a,b
        print(data)
except KeyboardInterrupt:
    plt.close()
