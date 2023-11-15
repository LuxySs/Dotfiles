#!/bin/bash

sudo rmmod ath11k_pci

sleep 2

sudo modprobe ath11k_pci
