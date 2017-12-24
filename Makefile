SHELL:=bash
NAME=Genetic_CNN
IPYNB=$(NAME).ipynb
PY=$(NAME).py
go: $(PY)
	-(nohup python3 ./$(PY) &> $(PY).log &)
$(PY): $(IPYNB)
	-(ipython3 nbconvert --to python $(IPYNB) &> $(IPYNB).log && chmod +x $(PY))

clean:
	rm -f $(PY) $(PY).log $(IPYNB)
