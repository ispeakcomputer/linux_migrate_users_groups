#!/bin/bash
for f in {passwd,group,shadow,gshadow}.bak; do cat $f >>/etc/${f%.bak}; done
