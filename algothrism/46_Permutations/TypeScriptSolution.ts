// Execute permute method will get solution
function permute(nums: number[]): number[][] {
    let result:number[][] = [];
    let track:number[] = [];
    backtrack(nums, track, result);
    return result;
};

function backtrack(nums:number[], track:number[], result:number[][]):void{
    if(nums.length === track.length){
        result.push(Object.assign([], track));
        return;
    }
    for(let i:number = 0;i<nums.length;i++){
        if(track.includes(nums[i])){
            continue;
        }
        track.push(nums[i]);
        backtrack(nums, track, result);
        track.pop();
    }
}