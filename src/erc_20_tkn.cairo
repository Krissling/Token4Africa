use starknet::ContractAddress;

#[starknet::interface]
trait IERC_20<T> {
    fn name(self: @TConttactState) -> ByteArray;
    fn symbol(self: @TConttactState) -> ByteArray;
    fn decimals(self: @TConttactState) -> u8;
    fn total_supply(self: @TConttactState) -> u256;
    fn balanceOf(self: @TConttactState, _account: ContractAddress) -> u256;
    fn approve(ref self: @TConttactState, _spender: ContractAddress, _amount: u256) -> bool;
    fn allowance(ref self: @TConttactState, _owner: ContractAddress, _spender: ContractAddress) -> u256;
    fn transfer(ref self: @TConttactState, _recipient: ContractAddress, _amount: u256) -> bool;
    fn transferFrom(ref self: @TConttactState, _sender: ContractAddress, _recipient: ContractAddress, _amount: u256) -> bool; 
    fn mint(ref self: @TConttactState, _recipient: ContractAddress, _amount: u256) -> u256;
    fn burn(ref self: @TConttactState, _recipient: ContractAddress, _amount: u256);
}

#[starknet::contract]
mod erc20Contract {
    use starknet::ContractAddress;

    #[storage]
    struct Storage {
        owner: ContractAddress,
        name: ByteArray,
        symbol: ByteArray,
        decimals: u8,
        total_supply: u256,
        balances: LagacyMap::<ContractAddress, u256>,
    }

    #[contructor]
    fn constructor(ref self: ContractState, _name: ByteArray, _symbol: ByteArray, _decimals: u8) {
        
    }
}