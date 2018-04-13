package br.unb.cic.epl.spl.height;

public privileged aspect AddHeight {
	public Integer br.unb.cic.epl.spl.add.Add.height() {
		Integer left  = lhs.height();
		Integer right = rhs.height();
		return Math.max(left+1, right+1);
	}
}
