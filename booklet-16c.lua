--- booklet sans T dans l'AAAAAA4
PageWidth = 841.88976
PageHeight = 595.27559
print("PageCount",PageCount)

-- We assume that H > W
-- Argh, we now can do better since we have "if" ;-)
-- Scale = PageHeight / (2*SourceWidth)

rot = 0
leftxof = (PageWidth / 2) - SourceWidth
yof = (PageHeight - SourceHeight) / 2
rightxof = (PageWidth / 2)

c = 0
ct = 0
while c < PageCount
do
-- Recto
		PushRecord(c + 16, ct + 1 , rot, leftxof , yof)
		PushRecord(c + 1 , ct + 1 , rot, rightxof , yof)
-- Verso
		PushRecord(c + 2, ct + 2 , rot, leftxof , yof)
		PushRecord(c + 15 ,ct + 2  , rot, rightxof, yof)
-- Recto
		PushRecord(c + 14, ct + 3 , rot, leftxof , yof)
		PushRecord(c + 3 , ct + 3 , rot, rightxof , yof)
-- Verso
		PushRecord(c + 4, ct + 4 , rot, leftxof , yof)
		PushRecord(c + 13 ,ct + 4  , rot, rightxof, yof)
-- Recto
		PushRecord(c + 12, ct + 5 , rot, leftxof , yof)
		PushRecord(c + 5 , ct + 5 , rot, rightxof , yof)
-- Verso
		PushRecord(c + 6, ct + 6 , rot, leftxof , yof)
		PushRecord(c + 11 ,ct + 6  , rot, rightxof, yof)
-- Recto
		PushRecord(c + 10, ct + 7 , rot, leftxof , yof)
		PushRecord(c + 7 , ct + 7 , rot, rightxof , yof)
-- Verso
		PushRecord(c + 8, ct + 8 , rot, leftxof , yof)
		PushRecord(c + 9 ,ct + 8  , rot, rightxof, yof)
		
		c = c + 16
		ct = ct + 8
end
