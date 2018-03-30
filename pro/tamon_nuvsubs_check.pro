pro tamon_nuvsubs_check,pid,rootname
	rcs_id="$Id$"
	spid=string1i(pid)
	sroot=string1i(rootname)

	ddir=get_smov_dir(pid=pid,/Data,/gzip)
	s1=get_cos_spt_hdr(pid,rootname,ext1)
	s4=get_cos_spt_hdr(pid,rootname,ext4)
	h0=mrdfits(ddir+'_rawacq.fits.gz',0,h0)
	h1=mrdfits(ddir+'_rawacq.fits.gz',1,h1)
	hdr=[h0,h1]

	sptkeys=['LQNUMSUB','LQSUB0XC','LQSUB0YS','LQSUB0YC','LQSUB0YS']
	LQNUMSUB1=svppar(s1,'LQNUMSUB')
	LQSUB0XC1=svppar(s1,'LQSUB0XC')
	LQSUB0YC1=svppar(s1,'LQSUB0YC')
	LQSUB0XS1=svppar(s1,'LQSUB0XS')
	LQSUB0YS1=svppar(s1,'LQSUB0YS')

	LQNUMSUB4=svppar(s4,'LQNUMSUB')
	LQSUB0XC4=svppar(s4,'LQSUB0XC')
	LQSUB0YC4=svppar(s4,'LQSUB0YC')
	LQSUB0XS4=svppar(s4,'LQSUB0XS')
	LQSUB0YS4=svppar(s4,'LQSUB0YS')

	print,spid,sroot
;
; 1
;
;	LQSUB0XS=                   50 / Subarray 0 X Size
;	LQSUB0YS=                  300 / Subarray 0 Y Size
;	LQSUB0XC=                  345 / Subarray 0 X Corner Coordinate
;	LQSUB0YC=                  324 / Subarray 0 Y Corner Coordinate
;
; 4
;	LQSUB0XS=                  345 / Subarray 0 X Size
;	LQSUB0YS=                  816 / Subarray 0 Y Size
;	LQSUB0XC=                  572 / Subarray 0 X Corner Coordinate
;	LQSUB0YC=                  108 / Subarray 0 Y Corner Coordinate

	rakeys=['LMPSUBX1','LMPSUBX2','LMPSUBY1','LMPSUBY2','TRGSUBX1','TRGSUBX2','TRGSUBY1','TRGSUBY2']

; LMPSUBX1=                  400 / X coord left  edge of lamp subarray (pix)
; LMPSUBX2=                  699 / X coord right edge of lamp subarray (pix)
; LMPSUBY1=                  629 / Y coord upper edge of lamp subarray (pix)
; LMPSUBY2=                  678 / Y coord lower edge of lamp subarray (pix)

;TRGSUBX1=                  100 / X coord left  edge of target subarray (pix)
;TRGSUBX2=                  915 / X coord right edge of target subarray (pix)
;TRGSUBY1=                  107 / Y coord upper edge of target subarray (pix)
;TRGSUBY2=                  451 / Y coord lower edge of target subarray (pix)

end
