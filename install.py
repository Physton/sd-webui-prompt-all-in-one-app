import sys
import os

AIO_PATH = os.path.abspath('./sd-webui-prompt-all-in-one/')
sys.path.append(AIO_PATH)

import launch

def run():
    install_path = os.path.join(AIO_PATH, 'install.py')
    if os.path.exists(install_path):
        print(f"Running install.py...")
        env = os.environ.copy()
        env['PYTHONPATH'] = f"{os.path.abspath('.')}{os.pathsep}{env.get('PYTHONPATH', '')}"

        stdout = launch.run(f'"{sys.executable}" "{install_path}"', errdesc=f"Error running install.py", custom_env=env).strip()
        if stdout:
            print(stdout)

        print(f"Finished running install.py.")

if __name__ == "__main__":
    run()