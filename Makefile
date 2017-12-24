SHELL:=bash
NAME=Genetic_CNN
IPYNB=$(NAME).ipynb
PY=$(NAME).py
go: $(PY)
	-(nohup python3 ./$(PY) &> $(PY).log &)
$(PY): $(IPYNB)
	-(ipython3 nbconvert --to python $(IPYNB) &> $(IPYNB).log && chmod +x $(PY))

clean:
	rm -f $(IPYNB).log
	rm -f $(PY)
	rm -f $(PY).log
	rm -rf __pycache__
	rm -rf mnist_data
	rm -rf .ipynb_checkpoints


